# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: lib\bflb_configobj.py
import os, re, sys
from codecs import BOM_UTF8, BOM_UTF16, BOM_UTF16_BE, BOM_UTF16_LE
import six
compiler = None
BOMS = {BOM_UTF8: ('utf_8', None), 
 BOM_UTF16_BE: ('utf16_be', 'utf_16'), 
 BOM_UTF16_LE: ('utf16_le', 'utf_16'), 
 BOM_UTF16: ('utf_16', 'utf_16')}
BOM_LIST = {'utf_16':'utf_16', 
 'u16':'utf_16', 
 'utf16':'utf_16', 
 'utf-16':'utf_16', 
 'utf16_be':'utf16_be', 
 'utf_16_be':'utf16_be', 
 'utf-16be':'utf16_be', 
 'utf16_le':'utf16_le', 
 'utf_16_le':'utf16_le', 
 'utf-16le':'utf16_le', 
 'utf_8':'utf_8', 
 'u8':'utf_8', 
 'utf':'utf_8', 
 'utf8':'utf_8', 
 'utf-8':'utf_8'}
BOM_SET = {'utf_8':BOM_UTF8, 
 'utf_16':BOM_UTF16, 
 'utf16_be':BOM_UTF16_BE, 
 'utf16_le':BOM_UTF16_LE, 
 None:BOM_UTF8}

def match_utf8(encoding):
    return BOM_LIST.get(encoding.lower()) == 'utf_8'


squot = "'%s'"
dquot = '"%s"'
noquot = '%s'
wspace_plus = ' \r\n\x0b\t\'"'
tsquot = '"""%s"""'
tdquot = "'''%s'''"
MISSING = object()
__all__ = ('DEFAULT_INDENT_TYPE', 'DEFAULT_INTERPOLATION', 'ConfigObjError', 'NestingError',
           'ParseError', 'DuplicateError', 'ConfigspecError', 'ConfigObj', 'SimpleVal',
           'InterpolationError', 'InterpolationLoopError', 'MissingInterpolationOption',
           'RepeatSectionError', 'ReloadError', 'UnreprError', 'UnknownType', 'flatten_errors',
           'get_extra_values')
DEFAULT_INTERPOLATION = 'configparser'
DEFAULT_INDENT_TYPE = '    '
MAX_INTERPOL_DEPTH = 10
OPTION_DEFAULTS = {'interpolation':True, 
 'raise_errors':False, 
 'list_values':True, 
 'create_empty':False, 
 'file_error':False, 
 'configspec':None, 
 'stringify':True, 
 'indent_type':None, 
 'encoding':None, 
 'default_encoding':None, 
 'unrepr':False, 
 'write_empty_values':False}

def getObj(s):
    global compiler
    if compiler is None:
        import compiler
    s = 'a=' + s
    p = compiler.parse(s)
    return p.getChildren()[1].getChildren()[0].getChildren()[1]


class UnknownType(Exception):
    pass


class Builder(object):

    def build(self, o):
        if m is None:
            raise UnknownType(o.__class__.__name__)
        return m(o)

    def build_List(self, o):
        return list(map(self.build, o.getChildren()))

    def build_Const(self, o):
        return o.value

    def build_Dict(self, o):
        d = {}
        i = iter(map(self.build, o.getChildren()))
        for el in i:
            d[el] = next(i)

        return d

    def build_Tuple(self, o):
        return tuple(self.build_List(o))

    def build_Name(self, o):
        if o.name == 'None':
            return
        if o.name == 'True':
            return True
        if o.name == 'False':
            return False
        raise UnknownType('Undefined Name')

    def build_Add(self, o):
        real, imag = list(map(self.build_Const, o.getChildren()))
        try:
            real = float(real)
        except TypeError:
            raise UnknownType('Add')

        if not isinstance(imag, complex) or imag.real != 0.0:
            raise UnknownType('Add')
        return real + imag

    def build_Getattr(self, o):
        parent = self.build(o.expr)
        return getattr(parent, o.attrname)

    def build_UnarySub(self, o):
        return -self.build_Const(o.getChildren()[0])

    def build_UnaryAdd(self, o):
        return self.build_Const(o.getChildren()[0])


_builder = Builder()

def unrepr(s):
    if not s:
        return s
    import ast
    return ast.literal_eval(s)


class ConfigObjError(SyntaxError):
    __doc__ = '\n    This is the base class for all errors that ConfigObj raises.\n    It is a subclass of SyntaxError.\n    '

    def __init__(self, message='', line_number=None, line=''):
        self.line = line
        self.line_number = line_number
        SyntaxError.__init__(self, message)


class NestingError(ConfigObjError):
    __doc__ = "\n    This error indicates a level of nesting that doesn't match.\n    "


class ParseError(ConfigObjError):
    __doc__ = '\n    This error indicates that a line is badly written.\n    It is neither a valid ``key = value`` line,\n    nor a valid section marker line.\n    '


class ReloadError(IOError):
    __doc__ = "\n    A 'reload' operation failed.\n    This exception is a subclass of ``IOError``.\n    "

    def __init__(self):
        IOError.__init__(self, 'reload failed, filename is not set.')


class DuplicateError(ConfigObjError):
    __doc__ = '\n    The keyword or section specified already exists.\n    '


class ConfigspecError(ConfigObjError):
    __doc__ = '\n    An error occured whilst parsing a configspec.\n    '


class InterpolationError(ConfigObjError):
    __doc__ = 'Base class for the two interpolation errors.'


class InterpolationLoopError(InterpolationError):
    __doc__ = 'Maximum interpolation depth exceeded in string interpolation.'

    def __init__(self, option):
        InterpolationError.__init__(self, 'interpolation loop detected in value "%s".' % option)


class RepeatSectionError(ConfigObjError):
    __doc__ = '\n    This error indicates additional sections in a section with a\n    ``__many__`` (repeated) section.\n    '


class MissingInterpolationOption(InterpolationError):
    __doc__ = 'A value specified for interpolation was missing.'

    def __init__(self, option):
        msg = 'missing option "%s" in interpolation.' % option
        InterpolationError.__init__(self, msg)


class UnreprError(ConfigObjError):
    __doc__ = 'An error parsing in unrepr mode.'


class InterpolationEngine(object):
    __doc__ = '\n    A helper class to help perform string interpolation.\n\n    This class is an abstract base class; its descendants perform\n    the actual work.\n    '
    _KEYCRE = re.compile('%\\(([^)]*)\\)s')
    _cookie = '%'

    def __init__(self, section):
        self.section = section

    def interpolate(self, key, value):
        if self._cookie not in value:
            return value

        def recursive_interpolate(key, value, section, backtrail):
            if (
             key, section.name) in backtrail:
                raise InterpolationLoopError(key)
            backtrail[(key, section.name)] = 1
            match = self._KEYCRE.search(value)
            while match:
                k, v, s = self._parse_match(match)
                if k is None:
                    replacement = v
                else:
                    replacement = recursive_interpolate(k, v, s, backtrail)
                start, end = match.span()
                value = ''.join((value[:start], replacement, value[end:]))
                new_search_start = start + len(replacement)
                match = self._KEYCRE.search(value, new_search_start)

            del backtrail[(key, section.name)]
            return value

        value = recursive_interpolate(key, value, self.section, {})
        return value

    def _fetch(self, key):
        """Helper function to fetch values from owning section.

        Returns a 2-tuple: the value, and the section where it was found.
        """
        save_interp = self.section.main.interpolation
        self.section.main.interpolation = False
        current_section = self.section
        while 1:
            val = current_section.get(key)
            if val is not None:
                if not isinstance(val, Section):
                    break
                val = current_section.get('DEFAULT', {}).get(key)
                if val is not None:
                    if not isinstance(val, Section):
                        break
                    if current_section.parent is current_section:
                        break
                    else:
                        current_section = current_section.parent

        self.section.main.interpolation = save_interp
        if val is None:
            raise MissingInterpolationOption(key)
        return (val, current_section)

    def _parse_match(self, match):
        """Implementation-dependent helper function.

        Will be passed a match object corresponding to the interpolation
        key we just found (e.g., "%(foo)s" or "$foo"). Should look up that
        key in the appropriate config file section (using the ``_fetch()``
        helper function) and return a 3-tuple: (key, value, section)

        ``key`` is the name of the key we're looking for
        ``value`` is the value found for that key
        ``section`` is a reference to the section where it was found

        ``key`` and ``section`` should be None if no further
        interpolation should be performed on the resulting value
        (e.g., if we interpolated "$$" and returned "$").
        """
        raise NotImplementedError()


class ConfigParserInterpolation(InterpolationEngine):
    __doc__ = 'Behaves like ConfigParser.'
    _cookie = '%'
    _KEYCRE = re.compile('%\\(([^)]*)\\)s')

    def _parse_match(self, match):
        key = match.group(1)
        value, section = self._fetch(key)
        return (
         key, value, section)


class TemplateInterpolation(InterpolationEngine):
    __doc__ = 'Behaves like string.Template.'
    _cookie = '$'
    _delimiter = '$'
    _KEYCRE = re.compile('\n        \\$(?:\n          (?P<escaped>\\$)              |   # Two $ signs\n          (?P<named>[_a-z][_a-z0-9]*)  |   # $name format\n          {(?P<braced>[^}]*)}              # ${name} format\n        )\n        ', re.IGNORECASE | re.VERBOSE)

    def _parse_match(self, match):
        key = match.group('named') or match.group('braced')
        if key is not None:
            value, section = self._fetch(key)
            return (
             key, value, section)
        if match.group('escaped') is not None:
            return (
             None, self._delimiter, None)
        return (
         None, match.group(), None)


interpolation_engines = {'configparser':ConfigParserInterpolation, 
 'template':TemplateInterpolation}

def __newobj__(cls, *args):
    return (cls.__new__)(cls, *args)


class Section(dict):
    __doc__ = "\n    A dictionary-like object that represents a section in a config file.\n    \n    It does string interpolation if the 'interpolation' attribute\n    of the 'main' object is set to True.\n    \n    Interpolation is tried first from this object, then from the 'DEFAULT'\n    section of this object, next from the parent and its 'DEFAULT' section,\n    and so on until the main object is reached.\n    \n    A Section will behave like an ordered dictionary - following the\n    order of the ``scalars`` and ``sections`` attributes.\n    You can use this to change the order of members.\n    \n    Iteration follows the order: scalars, then sections.\n    "

    def __setstate__(self, state):
        dict.update(self, state[0])
        self.__dict__.update(state[1])

    def __reduce__(self):
        state = (
         dict(self), self.__dict__)
        return (
         __newobj__, (self.__class__,), state)

    def __init__(self, parent, depth, main, indict=None, name=None):
        """
        * parent is the section above
        * depth is the depth level of this section
        * main is the main ConfigObj
        * indict is a dictionary to initialise the section with
        """
        if indict is None:
            indict = {}
        dict.__init__(self)
        self.parent = parent
        self.main = main
        self.depth = depth
        self.name = name
        self._initialise()
        for entry, value in indict.items():
            self[entry] = value

    def _initialise(self):
        self.scalars = []
        self.sections = []
        self.comments = {}
        self.inline_comments = {}
        self.configspec = None
        self.defaults = []
        self.default_values = {}
        self.extra_values = []
        self._created = False

    def _interpolate(self, key, value):
        try:
            engine = self._interpolation_engine
        except AttributeError:
            name = self.main.interpolation
            if name == True:
                name = DEFAULT_INTERPOLATION
            name = name.lower()
            class_ = interpolation_engines.get(name, None)
            if class_ is None:
                self.main.interpolation = False
                return value
            engine = self._interpolation_engine = class_(self)

        return engine.interpolate(key, value)

    def __getitem__(self, key):
        """Fetch the item and do string interpolation."""
        val = dict.__getitem__(self, key)
        if self.main.interpolation:
            if isinstance(val, six.string_types):
                return self._interpolate(key, val)
            if isinstance(val, list):

                def _check(entry):
                    if isinstance(entry, six.string_types):
                        return self._interpolate(key, entry)
                    return entry

                new = [_check(entry) for entry in val]
                if new != val:
                    return new
        return val

    def __setitem__(self, key, value, unrepr=False):
        """
        Correctly set a value.
        
        Making dictionary values Section instances.
        (We have to special case 'Section' instances - which are also dicts)
        
        Keys must be strings.
        Values need only be strings (or lists of strings) if
        ``main.stringify`` is set.
        
        ``unrepr`` must be set when setting a value to a dictionary, without
        creating a new sub-section.
        """
        if not isinstance(key, six.string_types):
            raise ValueError('The key "%s" is not a string.' % key)
        if key not in self.comments:
            self.comments[key] = []
            self.inline_comments[key] = ''
        if key in self.defaults:
            self.defaults.remove(key)
        if isinstance(value, Section):
            if key not in self:
                self.sections.append(key)
            dict.__setitem__(self, key, value)
        elif isinstance(value, dict) and not unrepr:
            if key not in self:
                self.sections.append(key)
            new_depth = self.depth + 1
            dict.__setitem__(self, key, Section(self,
              new_depth,
              (self.main),
              indict=value,
              name=key))
        else:
            if key not in self:
                self.scalars.append(key)
            if not self.main.stringify or isinstance(value, six.string_types):
                pass
            elif isinstance(value, (list, tuple)):
                for entry in value:
                    if not isinstance(entry, six.string_types):
                        raise TypeError('Value is not a string "%s".' % entry)

            else:
                raise TypeError('Value is not a string "%s".' % value)
            dict.__setitem__(self, key, value)

    def __delitem__(self, key):
        """Remove items from the sequence when deleting."""
        dict.__delitem__(self, key)
        if key in self.scalars:
            self.scalars.remove(key)
        else:
            self.sections.remove(key)
        del self.comments[key]
        del self.inline_comments[key]

    def get(self, key, default=None):
        """A version of ``get`` that doesn't bypass string interpolation."""
        try:
            return self[key]
        except KeyError:
            return default

    def update(self, indict):
        """
        A version of update that uses our ``__setitem__``.
        """
        for entry in indict:
            self[entry] = indict[entry]

    def pop(self, key, default=MISSING):
        """
        'D.pop(k[,d]) -> v, remove specified key and return the corresponding value.
        If key is not found, d is returned if given, otherwise KeyError is raised'
        """
        try:
            val = self[key]
        except KeyError:
            if default is MISSING:
                raise
            else:
                val = default
        else:
            del self[key]

        return val

    def popitem(self):
        """Pops the first (key,val)"""
        sequence = self.scalars + self.sections
        if not sequence:
            raise KeyError(": 'popitem(): dictionary is empty'")
        key = sequence[0]
        val = self[key]
        del self[key]
        return (
         key, val)

    def clear(self):
        """
        A version of clear that also affects scalars/sections
        Also clears comments and configspec.
        
        Leaves other attributes alone :
            depth/main/parent are not affected
        """
        dict.clear(self)
        self.scalars = []
        self.sections = []
        self.comments = {}
        self.inline_comments = {}
        self.configspec = None
        self.defaults = []
        self.extra_values = []

    def setdefault(self, key, default=None):
        """A version of setdefault that sets sequence if appropriate."""
        try:
            return self[key]
        except KeyError:
            self[key] = default
            return self[key]

    def items(self):
        """D.items() -> list of D's (key, value) pairs, as 2-tuples"""
        return list(zip(self.scalars + self.sections, list(self.values())))

    def keys(self):
        """D.keys() -> list of D's keys"""
        return self.scalars + self.sections

    def values(self):
        """D.values() -> list of D's values"""
        return [self[key] for key in self.scalars + self.sections]

    def iteritems(self):
        """D.iteritems() -> an iterator over the (key, value) items of D"""
        return iter(list(self.items()))

    def iterkeys(self):
        """D.iterkeys() -> an iterator over the keys of D"""
        return iter(self.scalars + self.sections)

    __iter__ = iterkeys

    def itervalues(self):
        """D.itervalues() -> an iterator over the values of D"""
        return iter(list(self.values()))

    def __repr__(self):
        """x.__repr__() <==> repr(x)"""

        def _getval(key):
            try:
                return self[key]
            except MissingInterpolationOption:
                return dict.__getitem__(self, key)

        return '{%s}' % ', '.join(['%s: %s' % (repr(key), repr(_getval(key))) for key in self.scalars + self.sections])

    __str__ = __repr__
    __str__.__doc__ = 'x.__str__() <==> str(x)'

    def dict(self):
        """
        Return a deepcopy of self as a dictionary.
        
        All members that are ``Section`` instances are recursively turned to
        ordinary dictionaries - by calling their ``dict`` method.
        
        >>> n = a.dict()
        >>> n == a
        1
        >>> n is a
        0
        """
        newdict = {}
        for entry in self:
            this_entry = self[entry]
            if isinstance(this_entry, Section):
                this_entry = this_entry.dict()
            elif isinstance(this_entry, list):
                this_entry = list(this_entry)
            elif isinstance(this_entry, tuple):
                this_entry = tuple(this_entry)
            newdict[entry] = this_entry

        return newdict

    def merge(self, indict):
        """
        A recursive update - useful for merging config files.
        
        >>> a = '''[section1]
        ...     option1 = True
        ...     [[subsection]]
        ...     more_options = False
        ...     # end of file'''.splitlines()
        >>> b = '''# File is user.ini
        ...     [section1]
        ...     option1 = False
        ...     # end of file'''.splitlines()
        >>> c1 = ConfigObj(b)
        >>> c2 = ConfigObj(a)
        >>> c2.merge(c1)
        >>> c2
        ConfigObj({'section1': {'option1': 'False', 'subsection': {'more_options': 'False'}}})
        """
        for key, val in list(indict.items()):
            if key in self:
                if isinstance(self[key], dict) and isinstance(val, dict):
                    self[key].merge(val)
                else:
                    self[key] = val

    def rename(self, oldkey, newkey):
        """
        Change a keyname to another, without changing position in sequence.
        
        Implemented so that transformations can be made on keys,
        as well as on values. (used by encode and decode)
        
        Also renames comments.
        """
        if oldkey in self.scalars:
            the_list = self.scalars
        elif oldkey in self.sections:
            the_list = self.sections
        else:
            raise KeyError('Key "%s" not found.' % oldkey)
        pos = the_list.index(oldkey)
        val = self[oldkey]
        dict.__delitem__(self, oldkey)
        dict.__setitem__(self, newkey, val)
        the_list.remove(oldkey)
        the_list.insert(pos, newkey)
        comm = self.comments[oldkey]
        inline_comment = self.inline_comments[oldkey]
        del self.comments[oldkey]
        del self.inline_comments[oldkey]
        self.comments[newkey] = comm
        self.inline_comments[newkey] = inline_comment

    def walk(self, function, raise_errors=True, call_on_sections=False, **keywargs):
        """
        Walk every member and call a function on the keyword and value.
        
        Return a dictionary of the return values
        
        If the function raises an exception, raise the errror
        unless ``raise_errors=False``, in which case set the return value to
        ``False``.
        
        Any unrecognised keyword arguments you pass to walk, will be pased on
        to the function you pass in.
        
        Note: if ``call_on_sections`` is ``True`` then - on encountering a
        subsection, *first* the function is called for the *whole* subsection,
        and then recurses into it's members. This means your function must be
        able to handle strings, dictionaries and lists. This allows you
        to change the key of subsections as well as for ordinary members. The
        return value when called on the whole subsection has to be discarded.
        
        See  the encode and decode methods for examples, including functions.
        
        .. admonition:: caution
        
            You can use ``walk`` to transform the names of members of a section
            but you mustn't add or delete members.
        
        >>> config = '''[XXXXsection]
        ... XXXXkey = XXXXvalue'''.splitlines()
        >>> cfg = ConfigObj(config)
        >>> cfg
        ConfigObj({'XXXXsection': {'XXXXkey': 'XXXXvalue'}})
        >>> def transform(section, key):
        ...     val = section[key]
        ...     newkey = key.replace('XXXX', 'CLIENT1')
        ...     section.rename(key, newkey)
        ...     if isinstance(val, (tuple, list, dict)):
        ...         pass
        ...     else:
        ...         val = val.replace('XXXX', 'CLIENT1')
        ...         section[newkey] = val
        >>> cfg.walk(transform, call_on_sections=True)
        {'CLIENT1section': {'CLIENT1key': None}}
        >>> cfg
        ConfigObj({'CLIENT1section': {'CLIENT1key': 'CLIENT1value'}})
        """
        out = {}
        for i in range(len(self.scalars)):
            entry = self.scalars[i]
            try:
                val = function(self, entry, **keywargs)
                entry = self.scalars[i]
                out[entry] = val
            except Exception:
                if raise_errors:
                    raise
                else:
                    entry = self.scalars[i]
                    out[entry] = False

        for i in range(len(self.sections)):
            entry = self.sections[i]
            if call_on_sections:
                try:
                    function(self, entry, **keywargs)
                except Exception:
                    if raise_errors:
                        raise
                    else:
                        entry = self.sections[i]
                        out[entry] = False

                entry = self.sections[i]
            else:
                out[entry] = (self[entry].walk)(
 function, raise_errors=raise_errors, 
                 call_on_sections=call_on_sections, **keywargs)

        return out

    def as_bool(self, key):
        """
        Accepts a key as input. The corresponding value must be a string or
        the objects (``True`` or 1) or (``False`` or 0). We allow 0 and 1 to
        retain compatibility with Python 2.2.
        
        If the string is one of  ``True``, ``On``, ``Yes``, or ``1`` it returns 
        ``True``.
        
        If the string is one of  ``False``, ``Off``, ``No``, or ``0`` it returns 
        ``False``.
        
        ``as_bool`` is not case sensitive.
        
        Any other input will raise a ``ValueError``.
        
        >>> a = ConfigObj()
        >>> a['a'] = 'fish'
        >>> a.as_bool('a')
        Traceback (most recent call last):
        ValueError: Value "fish" is neither True nor False
        >>> a['b'] = 'True'
        >>> a.as_bool('b')
        1
        >>> a['b'] = 'off'
        >>> a.as_bool('b')
        0
        """
        val = self[key]
        if val == True:
            return True
        if val == False:
            return False
        try:
            if not isinstance(val, six.string_types):
                raise KeyError()
            else:
                return self.main._bools[val.lower()]
        except KeyError:
            raise ValueError('Value "%s" is neither True nor False' % val)

    def as_int(self, key):
        """
        A convenience method which coerces the specified value to an integer.
        
        If the value is an invalid literal for ``int``, a ``ValueError`` will
        be raised.
        
        >>> a = ConfigObj()
        >>> a['a'] = 'fish'
        >>> a.as_int('a')
        Traceback (most recent call last):
        ValueError: invalid literal for int() with base 10: 'fish'
        >>> a['b'] = '1'
        >>> a.as_int('b')
        1
        >>> a['b'] = '3.2'
        >>> a.as_int('b')
        Traceback (most recent call last):
        ValueError: invalid literal for int() with base 10: '3.2'
        """
        return int(self[key])

    def as_float(self, key):
        """
        A convenience method which coerces the specified value to a float.
        
        If the value is an invalid literal for ``float``, a ``ValueError`` will
        be raised.
        
        >>> a = ConfigObj()
        >>> a['a'] = 'fish'
        >>> a.as_float('a')  #doctest: +IGNORE_EXCEPTION_DETAIL
        Traceback (most recent call last):
        ValueError: invalid literal for float(): fish
        >>> a['b'] = '1'
        >>> a.as_float('b')
        1.0
        >>> a['b'] = '3.2'
        >>> a.as_float('b')  #doctest: +ELLIPSIS
        3.2...
        """
        return float(self[key])

    def as_list(self, key):
        """
        A convenience method which fetches the specified value, guaranteeing
        that it is a list.
        
        >>> a = ConfigObj()
        >>> a['a'] = 1
        >>> a.as_list('a')
        [1]
        >>> a['a'] = (1,)
        >>> a.as_list('a')
        [1]
        >>> a['a'] = [1]
        >>> a.as_list('a')
        [1]
        """
        result = self[key]
        if isinstance(result, (tuple, list)):
            return list(result)
        return [result]

    def restore_default(self, key):
        """
        Restore (and return) default value for the specified key.
        
        This method will only work for a ConfigObj that was created
        with a configspec and has been validated.
        
        If there is no default value for this key, ``KeyError`` is raised.
        """
        default = self.default_values[key]
        dict.__setitem__(self, key, default)
        if key not in self.defaults:
            self.defaults.append(key)
        return default

    def restore_defaults(self):
        """
        Recursively restore default values to all members
        that have them.
        
        This method will only work for a ConfigObj that was created
        with a configspec and has been validated.
        
        It doesn't delete or modify entries without default values.
        """
        for key in self.default_values:
            self.restore_default(key)

        for section in self.sections:
            self[section].restore_defaults()


class ConfigObj(Section):
    __doc__ = 'An object to read, create, and write config files.'
    _keyword = re.compile('^ # line start\n        (\\s*)                   # indentation\n        (                       # keyword\n            (?:".*?")|          # double quotes\n            (?:\'.*?\')|          # single quotes\n            (?:[^\'"=].*?)       # no quotes\n        )\n        \\s*=\\s*                 # divider\n        (.*)                    # value (including list values and comments)\n        $   # line end\n        ', re.VERBOSE)
    _sectionmarker = re.compile('^\n        (\\s*)                     # 1: indentation\n        ((?:\\[\\s*)+)              # 2: section marker open\n        (                         # 3: section name open\n            (?:"\\s*\\S.*?\\s*")|    # at least one non-space with double quotes\n            (?:\'\\s*\\S.*?\\s*\')|    # at least one non-space with single quotes\n            (?:[^\'"\\s].*?)        # at least one non-space unquoted\n        )                         # section name close\n        ((?:\\s*\\])+)              # 4: section marker close\n        \\s*(\\#.*)?                # 5: optional comment\n        $', re.VERBOSE)
    _valueexp = re.compile('^\n        (?:\n            (?:\n                (\n                    (?:\n                        (?:\n                            (?:".*?")|              # double quotes\n                            (?:\'.*?\')|              # single quotes\n                            (?:[^\'",\\#][^,\\#]*?)    # unquoted\n                        )\n                        \\s*,\\s*                     # comma\n                    )*      # match all list items ending in a comma (if any)\n                )\n                (\n                    (?:".*?")|                      # double quotes\n                    (?:\'.*?\')|                      # single quotes\n                    (?:[^\'",\\#\\s][^,]*?)|           # unquoted\n                    (?:(?<!,))                      # Empty value\n                )?          # last item in a list - or string value\n            )|\n            (,)             # alternatively a single comma - empty list\n        )\n        \\s*(\\#.*)?          # optional comment\n        $', re.VERBOSE)
    _listvalueexp = re.compile('\n        (\n            (?:".*?")|          # double quotes\n            (?:\'.*?\')|          # single quotes\n            (?:[^\'",\\#]?.*?)       # unquoted\n        )\n        \\s*,\\s*                 # comma\n        ', re.VERBOSE)
    _nolistvalue = re.compile('^\n        (\n            (?:".*?")|          # double quotes\n            (?:\'.*?\')|          # single quotes\n            (?:[^\'"\\#].*?)|     # unquoted\n            (?:)                # Empty value\n        )\n        \\s*(\\#.*)?              # optional comment\n        $', re.VERBOSE)
    _single_line_single = re.compile("^'''(.*?)'''\\s*(#.*)?$")
    _single_line_double = re.compile('^"""(.*?)"""\\s*(#.*)?$')
    _multi_line_single = re.compile("^(.*?)'''\\s*(#.*)?$")
    _multi_line_double = re.compile('^(.*?)"""\\s*(#.*)?$')
    _triple_quote = {"'''":(
      _single_line_single, _multi_line_single), 
     '"""':(
      _single_line_double, _multi_line_double)}
    _bools = {'yes':True, 
     'no':False,  'on':True, 
     'off':False,  '1':True, 
     '0':False,  'true':True, 
     'false':False}

    def __init__(self, infile=None, options=None, configspec=None, encoding=None, interpolation=True, raise_errors=False, list_values=True, create_empty=False, file_error=False, stringify=True, indent_type=None, default_encoding=None, unrepr=False, write_empty_values=False, _inspec=False):
        """
        Parse a config file or create a config file object.
        
        ``ConfigObj(infile=None, configspec=None, encoding=None,
                    interpolation=True, raise_errors=False, list_values=True,
                    create_empty=False, file_error=False, stringify=True,
                    indent_type=None, default_encoding=None, unrepr=False,
                    write_empty_values=False, _inspec=False)``
        """
        self._inspec = _inspec
        Section.__init__(self, self, 0, self)
        infile = infile or []
        _options = {'configspec':configspec, 
         'encoding':encoding, 
         'interpolation':interpolation,  'raise_errors':raise_errors, 
         'list_values':list_values,  'create_empty':create_empty, 
         'file_error':file_error,  'stringify':stringify, 
         'indent_type':indent_type,  'default_encoding':default_encoding, 
         'unrepr':unrepr,  'write_empty_values':write_empty_values}
        if options is None:
            options = _options
        else:
            import warnings
            warnings.warn('Passing in an options dictionary to ConfigObj() is deprecated. Use **options instead.', DeprecationWarning,
              stacklevel=2)
            for entry in options:
                if entry not in OPTION_DEFAULTS:
                    raise TypeError('Unrecognised option "%s".' % entry)

            for entry, value in list(OPTION_DEFAULTS.items()):
                if entry not in options:
                    options[entry] = value
                else:
                    keyword_value = _options[entry]
                if value != keyword_value:
                    options[entry] = keyword_value

        if _inspec:
            options['list_values'] = False
        self._initialise(options)
        configspec = options['configspec']
        self._original_configspec = configspec
        self._load(infile, configspec)

    def _load(self, infile, configspec):
        if isinstance(infile, six.string_types):
            self.filename = infile
            if os.path.isfile(infile):
                with open(infile, 'rb') as h:
                    content = h.readlines() or []
            elif self.file_error:
                raise IOError('Config file not found: "%s".' % self.filename)
            else:
                if self.create_empty:
                    with open(infile, 'w') as h:
                        h.write('')
                content = []
        elif isinstance(infile, (list, tuple)):
            content = list(infile)
        else:
            if isinstance(infile, dict):
                if isinstance(infile, ConfigObj):

                    def set_section(in_section, this_section):
                        for entry in in_section.scalars:
                            this_section[entry] = in_section[entry]

                        for section in in_section.sections:
                            this_section[section] = {}
                            set_section(in_section[section], this_section[section])

                    set_section(infile, self)
                else:
                    for entry in infile:
                        self[entry] = infile[entry]

                del self._errors
                if configspec is not None:
                    self._handle_configspec(configspec)
                else:
                    self.configspec = None
                return
            if getattr(infile, 'read', MISSING) is not MISSING:
                content = infile.read() or []
            else:
                raise TypeError('infile must be a filename, file like object, or list of lines.')
        if content:
            content = self._handle_bom(content)
            for line in content:
                if line:
                    if line[(-1)] not in ('\r', '\n'):
                        continue
                    else:
                        for end in ('\r\n', '\n', '\r'):
                            if line.endswith(end):
                                self.newlines = end
                                break

                    break

        assert all((isinstance(line, six.string_types) for line in content)), repr(content)
        content = [line.rstrip('\r\n') for line in content]
        self._parse(content)
        if self._errors:
            info = 'at line %s.' % self._errors[0].line_number
            if len(self._errors) > 1:
                msg = 'Parsing failed with several errors.\nFirst error %s' % info
                error = ConfigObjError(msg)
            else:
                error = self._errors[0]
            error.errors = self._errors
            error.config = self
            raise error
        del self._errors
        if configspec is None:
            self.configspec = None
        else:
            self._handle_configspec(configspec)

    def _initialise(self, options=None):
        if options is None:
            options = OPTION_DEFAULTS
        self.filename = None
        self._errors = []
        self.raise_errors = options['raise_errors']
        self.interpolation = options['interpolation']
        self.list_values = options['list_values']
        self.create_empty = options['create_empty']
        self.file_error = options['file_error']
        self.stringify = options['stringify']
        self.indent_type = options['indent_type']
        self.encoding = options['encoding']
        self.default_encoding = options['default_encoding']
        self.BOM = False
        self.newlines = None
        self.write_empty_values = options['write_empty_values']
        self.unrepr = options['unrepr']
        self.initial_comment = []
        self.final_comment = []
        self.configspec = None
        if self._inspec:
            self.list_values = False
        Section._initialise(self)

    def __repr__(self):

        def _getval(key):
            try:
                return self[key]
            except MissingInterpolationOption:
                return dict.__getitem__(self, key)

        return 'ConfigObj({%s})' % ', '.join(['%s: %s' % (repr(key), repr(_getval(key))) for key in self.scalars + self.sections])

    def _handle_bom(self, infile):
        """
        Handle any BOM, and decode if necessary.
        
        If an encoding is specified, that *must* be used - but the BOM should
        still be removed (and the BOM attribute set).
        
        (If the encoding is wrongly specified, then a BOM for an alternative
        encoding won't be discovered or removed.)
        
        If an encoding is not specified, UTF8 or UTF16 BOM will be detected and
        removed. The BOM attribute will be set. UTF16 will be decoded to
        unicode.
        
        NOTE: This method must not be called with an empty ``infile``.
        
        Specifying the *wrong* encoding is likely to cause a
        ``UnicodeDecodeError``.
        
        ``infile`` must always be returned as a list of lines, but may be
        passed in as a single string.
        """
        if self.encoding is not None:
            if self.encoding.lower() not in BOM_LIST:
                return self._decode(infile, self.encoding)
        if isinstance(infile, (list, tuple)):
            line = infile[0]
        else:
            line = infile
        if isinstance(line, six.text_type):
            return self._decode(infile, self.encoding)
        if self.encoding is not None:
            enc = BOM_LIST[self.encoding.lower()]
            if enc == 'utf_16':
                for BOM, (encoding, final_encoding) in list(BOMS.items()):
                    if not final_encoding:
                        continue
                    if infile.startswith(BOM):
                        return self._decode(infile, encoding)

                return self._decode(infile, self.encoding)
            BOM = BOM_SET[enc]
            if not line.startswith(BOM):
                return self._decode(infile, self.encoding)
            newline = line[len(BOM):]
            if isinstance(infile, (list, tuple)):
                infile[0] = newline
            else:
                infile = newline
            self.BOM = True
            return self._decode(infile, self.encoding)
        for BOM, (encoding, final_encoding) in list(BOMS.items()):
            if isinstance(line, six.binary_type):
                if not line.startswith(BOM):
                    continue
                else:
                    self.encoding = final_encoding
                    if not final_encoding:
                        self.BOM = True
                        newline = line[len(BOM):]
                        if isinstance(infile, (list, tuple)):
                            infile[0] = newline
                        else:
                            infile = newline
                        if isinstance(infile, six.text_type):
                            return infile.splitlines(True)
                        if isinstance(infile, six.binary_type):
                            return infile.decode('utf-8').splitlines(True)
                        return self._decode(infile, 'utf-8')
                    return self._decode(infile, encoding)

        if six.PY2:
            if isinstance(line, str):
                return self._decode(infile, None)
        if isinstance(infile, six.binary_type):
            return infile.decode('utf-8').splitlines(True)
        return self._decode(infile, 'utf-8')

    def _a_to_u(self, aString):
        """Decode ASCII strings to unicode if a self.encoding is specified."""
        if isinstance(aString, six.binary_type):
            if self.encoding:
                return aString.decode(self.encoding)
        return aString

    def _decode(self, infile, encoding):
        """
        Decode infile to unicode. Using the specified encoding.
        
        if is a string, it also needs converting to a list.
        """
        if isinstance(infile, six.string_types):
            return infile.splitlines(True)
        if isinstance(infile, six.binary_type):
            if encoding:
                return infile.decode(encoding).splitlines(True)
            return infile.splitlines(True)
        if encoding:
            for i, line in enumerate(infile):
                if isinstance(line, six.binary_type):
                    infile[i] = line.decode(encoding)

        return infile

    def _decode_element(self, line):
        """Decode element to unicode if necessary."""
        if isinstance(line, six.binary_type):
            if self.default_encoding:
                return line.decode(self.default_encoding)
        return line

    def _str(self, value):
        """
        Used by ``stringify`` within validate, to turn non-string values
        into strings.
        """
        if not isinstance(value, six.string_types):
            return str(value)
        return value

    def _parse(self, infile):
        """Actually parse the config file."""
        temp_list_values = self.list_values
        if self.unrepr:
            self.list_values = False
        comment_list = []
        done_start = False
        this_section = self
        maxline = len(infile) - 1
        cur_index = -1
        reset_comment = False
        while cur_index < maxline:
            if reset_comment:
                comment_list = []
            else:
                cur_index += 1
                line = infile[cur_index]
                sline = line.strip()
            if not sline or sline.startswith('#'):
                reset_comment = False
                comment_list.append(line)
                continue
            else:
                if not done_start:
                    self.initial_comment = comment_list
                    comment_list = []
                    done_start = True
                reset_comment = True
                mat = self._sectionmarker.match(line)
            if mat is not None:
                indent, sect_open, sect_name, sect_close, comment = mat.groups()
                if indent:
                    if self.indent_type is None:
                        self.indent_type = indent
                cur_depth = sect_open.count('[')
                if cur_depth != sect_close.count(']'):
                    self._handle_error('Cannot compute the section depth', NestingError, infile, cur_index)
                    continue
                if cur_depth < this_section.depth:
                    try:
                        parent = self._match_depth(this_section, cur_depth).parent
                    except SyntaxError:
                        self._handle_error('Cannot compute nesting level', NestingError, infile, cur_index)
                        continue

                else:
                    if cur_depth == this_section.depth:
                        parent = this_section.parent
                    else:
                        if cur_depth == this_section.depth + 1:
                            parent = this_section
                        else:
                            self._handle_error('Section too nested', NestingError, infile, cur_index)
                            continue
                sect_name = self._unquote(sect_name)
                if sect_name in parent:
                    self._handle_error('Duplicate section name', DuplicateError, infile, cur_index)
                    continue
                else:
                    this_section = Section(parent,
                      cur_depth,
                      self,
                      name=sect_name)
                    parent[sect_name] = this_section
                    parent.inline_comments[sect_name] = comment
                    parent.comments[sect_name] = comment_list
                continue
            else:
                mat = self._keyword.match(line)
            if mat is None:
                self._handle_error('Invalid line ({0!r}) (matched as neither section nor keyword)'.format(line), ParseError, infile, cur_index)
            else:
                indent, key, value = mat.groups()
                if indent:
                    if self.indent_type is None:
                        self.indent_type = indent
                if value[:3] in ('"""', "'''"):
                    try:
                        value, comment, cur_index = self._multiline(value, infile, cur_index, maxline)
                    except SyntaxError:
                        self._handle_error('Parse error in multiline value', ParseError, infile, cur_index)
                        continue
                    else:
                        if self.unrepr:
                            comment = ''
                            try:
                                value = unrepr(value)
                            except Exception as e:
                                try:
                                    if type(e) == UnknownType:
                                        msg = 'Unknown name or type in value'
                                    else:
                                        msg = 'Parse error from unrepr-ing multiline value'
                                    self._handle_error(msg, UnreprError, infile, cur_index)
                                    continue
                                finally:
                                    e = None
                                    del e

                    if self.unrepr:
                        comment = ''
                        try:
                            value = unrepr(value)
                        except Exception as e:
                            try:
                                if isinstance(e, UnknownType):
                                    msg = 'Unknown name or type in value'
                                else:
                                    msg = 'Parse error from unrepr-ing value'
                                self._handle_error(msg, UnreprError, infile, cur_index)
                                continue
                            finally:
                                e = None
                                del e

                    else:
                        try:
                            value, comment = self._handle_value(value)
                        except SyntaxError:
                            self._handle_error('Parse error in value', ParseError, infile, cur_index)
                            continue

                        key = self._unquote(key)
                        if key in this_section:
                            self._handle_error('Duplicate keyword name', DuplicateError, infile, cur_index)
                            continue
                        else:
                            this_section.__setitem__(key, value, unrepr=True)
                            this_section.inline_comments[key] = comment
                            this_section.comments[key] = comment_list
                        continue

        if self.indent_type is None:
            self.indent_type = ''
        if not self:
            self.initial_comment = self.initial_comment or comment_list
        else:
            pass
        if not reset_comment:
            self.final_comment = comment_list
        self.list_values = temp_list_values

    def _match_depth(self, sect, depth):
        """
        Given a section and a depth level, walk back through the sections
        parents to see if the depth level matches a previous section.
        
        Return a reference to the right section,
        or raise a SyntaxError.
        """
        while depth < sect.depth:
            if sect is sect.parent:
                raise SyntaxError()
            else:
                sect = sect.parent

        if sect.depth == depth:
            return sect
        raise SyntaxError()

    def _handle_error(self, text, ErrorClass, infile, cur_index):
        """
        Handle an error according to the error settings.
        
        Either raise the error or store it.
        The error will have occured at ``cur_index``
        """
        line = infile[cur_index]
        cur_index += 1
        message = '{0} at line {1}.'.format(text, cur_index)
        error = ErrorClass(message, cur_index, line)
        if self.raise_errors:
            raise error
        self._errors.append(error)

    def _unquote(self, value):
        """Return an unquoted version of a value"""
        if not value:
            raise SyntaxError
        if value[0] == value[(-1)]:
            if value[0] in ('"', "'"):
                value = value[1:-1]
        return value

    def _quote(self, value, multiline=True):
        r"""
        Return a safely quoted version of a value.
        
        Raise a ConfigObjError if the value cannot be safely quoted.
        If multiline is ``True`` (default) then use triple quotes
        if necessary.
        
        * Don't quote values that don't need it.
        * Recursively quote members of a list and return a comma joined list.
        * Multiline is ``False`` for lists.
        * Obey list syntax for empty and single member lists.
        
        If ``list_values=False`` then the value is only quoted if it contains
        a ``\n`` (is multiline) or '#'.
        
        If ``write_empty_values`` is set, and the value is an empty string, it
        won't be quoted.
        """
        if multiline:
            if self.write_empty_values:
                if value == '':
                    return ''
        if multiline:
            if isinstance(value, (list, tuple)):
                if not value:
                    return ','
                if len(value) == 1:
                    return self._quote((value[0]), multiline=False) + ','
                return ', '.join([self._quote(val, multiline=False) for val in value])
        if not isinstance(value, six.string_types):
            if self.stringify:
                value = str(value)
            else:
                raise TypeError('Value "%s" is not a string.' % value)
        if not value:
            return '""'
        no_lists_no_quotes = not self.list_values and '\n' not in value and '#' not in value
        need_triple = multiline and ("'" in value) and ('"' in value) or ('\n' in value)
        hash_triple_quote = multiline and not need_triple and "'" in value and '"' in value and '#' in value
        if not no_lists_no_quotes:
            check_for_single = not need_triple and not hash_triple_quote
            if check_for_single:
                if not self.list_values:
                    quot = noquot
                elif '\n' in value:
                    raise ConfigObjError('Value "%s" cannot be safely quoted.' % value)
                elif value[0] not in wspace_plus and value[(-1)] not in wspace_plus and ',' not in value:
                    quot = noquot
                else:
                    quot = self._get_single_quote(value)
            else:
                quot = self._get_triple_quote(value)
            if quot == noquot:
                if '#' in value:
                    if self.list_values:
                        quot = self._get_single_quote(value)
            return quot % value

    def _get_single_quote(self, value):
        if "'" in value and '"' in value:
            raise ConfigObjError('Value "%s" cannot be safely quoted.' % value)
        elif '"' in value:
            quot = squot
        else:
            quot = dquot
        return quot

    def _get_triple_quote(self, value):
        if value.find('"""') != -1:
            if value.find("'''") != -1:
                raise ConfigObjError('Value "%s" cannot be safely quoted.' % value)
        if value.find('"""') == -1:
            quot = tdquot
        else:
            quot = tsquot
        return quot

    def _handle_value(self, value):
        """
        Given a value string, unquote, remove comment,
        handle lists. (including empty and single member lists)
        """
        if self._inspec:
            return (
             value, '')
        if not self.list_values:
            mat = self._nolistvalue.match(value)
            if mat is None:
                raise SyntaxError()
            return mat.groups()
        mat = self._valueexp.match(value)
        if mat is None:
            raise SyntaxError()
        list_values, single, empty_list, comment = mat.groups()
        if list_values == '':
            if single is None:
                raise SyntaxError()
        if empty_list is not None:
            return ([], comment)
        if single is not None:
            if list_values and not single:
                single = None
            else:
                single = single or '""'
                single = self._unquote(single)
        if list_values == '':
            return (
             single, comment)
        the_list = self._listvalueexp.findall(list_values)
        the_list = [self._unquote(val) for val in the_list]
        if single is not None:
            the_list += [single]
        return (the_list, comment)

    def _multiline(self, value, infile, cur_index, maxline):
        """Extract the value, where we are in a multiline situation."""
        quot = value[:3]
        newvalue = value[3:]
        single_line = self._triple_quote[quot][0]
        multi_line = self._triple_quote[quot][1]
        mat = single_line.match(value)
        if mat is not None:
            retval = list(mat.groups())
            retval.append(cur_index)
            return retval
        if newvalue.find(quot) != -1:
            raise SyntaxError()
        while 1:
            if cur_index < maxline:
                cur_index += 1
                newvalue += '\n'
                line = infile[cur_index]
                if line.find(quot) == -1:
                    newvalue += line
                else:
                    break
        else:
            raise SyntaxError()

        mat = multi_line.match(line)
        if mat is None:
            raise SyntaxError()
        value, comment = mat.groups()
        return (
         newvalue + value, comment, cur_index)

    def _handle_configspec(self, configspec):
        """Parse the configspec."""
        if not isinstance(configspec, ConfigObj):
            try:
                configspec = ConfigObj(configspec, raise_errors=True,
                  file_error=True,
                  _inspec=True)
            except ConfigObjError as e:
                try:
                    raise ConfigspecError('Parsing configspec failed: %s' % e)
                finally:
                    e = None
                    del e

            except IOError as e:
                try:
                    raise IOError('Reading configspec failed: %s' % e)
                finally:
                    e = None
                    del e

        self.configspec = configspec

    def _set_configspec(self, section, copy):
        """
        Called by validate. Handles setting the configspec on subsections
        including sections to be validated by __many__
        """
        configspec = section.configspec
        many = configspec.get('__many__')
        if isinstance(many, dict):
            for entry in section.sections:
                if entry not in configspec:
                    section[entry].configspec = many

        for entry in configspec.sections:
            if entry == '__many__':
                continue
            elif entry not in section:
                section[entry] = {}
                section[entry]._created = True
                if copy:
                    section.comments[entry] = configspec.comments.get(entry, [])
                    section.inline_comments[entry] = configspec.inline_comments.get(entry, '')
            if isinstance(section[entry], Section):
                section[entry].configspec = configspec[entry]

    def _write_line(self, indent_string, entry, this_entry, comment):
        """Write an individual line, for the write method"""
        if not self.unrepr:
            val = self._decode_element(self._quote(this_entry))
        else:
            val = repr(this_entry)
        return '%s%s%s%s%s' % (indent_string,
         self._decode_element(self._quote(entry, multiline=False)),
         self._a_to_u(' = '),
         val,
         self._decode_element(comment))

    def _write_marker(self, indent_string, depth, entry, comment):
        """Write a section marker line"""
        return '%s%s%s%s%s' % (indent_string,
         self._a_to_u('[' * depth),
         self._quote((self._decode_element(entry)), multiline=False),
         self._a_to_u(']' * depth),
         self._decode_element(comment))

    def _handle_comment(self, comment):
        """Deal with a comment."""
        if not comment:
            return ''
        start = self.indent_type
        if not comment.startswith('#'):
            start += self._a_to_u(' # ')
        return start + comment

    def write(self, outfile=None, section=None):
        """
        Write the current ConfigObj as a file
        
        tekNico: FIXME: use StringIO instead of real files
        
        >>> filename = a.filename
        >>> a.filename = 'test.ini'
        >>> a.write()
        >>> a.filename = filename
        >>> a == ConfigObj('test.ini', raise_errors=True)
        1
        >>> import os
        >>> os.remove('test.ini')
        """
        if self.indent_type is None:
            self.indent_type = DEFAULT_INDENT_TYPE
        out = []
        cs = self._a_to_u('#')
        csp = self._a_to_u('# ')
        if section is None:
            int_val = self.interpolation
            self.interpolation = False
            section = self
            for line in self.initial_comment:
                line = self._decode_element(line)
                stripped_line = line.strip()
                if stripped_line:
                    if not stripped_line.startswith(cs):
                        line = csp + line
                    out.append(line)

        indent_string = self.indent_type * section.depth
        for entry in section.scalars + section.sections:
            if entry in section.defaults:
                continue
            else:
                for comment_line in section.comments[entry]:
                    comment_line = self._decode_element(comment_line.lstrip())
                    if comment_line:
                        if not comment_line.startswith(cs):
                            comment_line = csp + comment_line
                        out.append(indent_string + comment_line)

                this_entry = section[entry]
                comment = self._handle_comment(section.inline_comments[entry])
            if isinstance(this_entry, Section):
                out.append(self._write_marker(indent_string, this_entry.depth, entry, comment))
                out.extend(self.write(section=this_entry))
            else:
                out.append(self._write_line(indent_string, entry, this_entry, comment))

        if section is self:
            for line in self.final_comment:
                line = self._decode_element(line)
                stripped_line = line.strip()
                if stripped_line:
                    if not stripped_line.startswith(cs):
                        line = csp + line
                    out.append(line)

            self.interpolation = int_val
        if section is not self:
            return out
        if self.filename is None:
            if outfile is None:
                if self.encoding:
                    out = [l.encode(self.encoding) for l in out]
                if self.BOM:
                    if self.encoding is None or (BOM_LIST.get(self.encoding.lower()) == 'utf_8'):
                        if not out:
                            out.append('')
                        out[0] = BOM_UTF8 + out[0]
                    return out
        newline = self.newlines or os.linesep
        if getattr(outfile, 'mode', None) is not None:
            if outfile.mode == 'w':
                if sys.platform == 'win32':
                    if newline == '\r\n':
                        newline = '\n'
        output = self._a_to_u(newline).join(out)
        if not output.endswith(newline):
            output += newline
        if isinstance(output, six.binary_type):
            output_bytes = output
        else:
            output_bytes = output.encode(self.encoding or self.default_encoding or 'ascii')
        if self.BOM:
            if self.encoding is None or (match_utf8(self.encoding)):
                output_bytes = BOM_UTF8 + output_bytes
        if outfile is not None:
            outfile.write(output_bytes)
        else:
            with open(self.filename, 'wb') as h:
                h.write(output_bytes)

    def validate(self, validator, preserve_errors=False, copy=False, section=None):
        """
        Test the ConfigObj against a configspec.
        
        It uses the ``validator`` object from *validate.py*.
        
        To run ``validate`` on the current ConfigObj, call: ::
        
            test = config.validate(validator)
        
        (Normally having previously passed in the configspec when the ConfigObj
        was created - you can dynamically assign a dictionary of checks to the
        ``configspec`` attribute of a section though).
        
        It returns ``True`` if everything passes, or a dictionary of
        pass/fails (True/False). If every member of a subsection passes, it
        will just have the value ``True``. (It also returns ``False`` if all
        members fail).
        
        In addition, it converts the values from strings to their native
        types if their checks pass (and ``stringify`` is set).
        
        If ``preserve_errors`` is ``True`` (``False`` is default) then instead
        of a marking a fail with a ``False``, it will preserve the actual
        exception object. This can contain info about the reason for failure.
        For example the ``VdtValueTooSmallError`` indicates that the value
        supplied was too small. If a value (or section) is missing it will
        still be marked as ``False``.
        
        You must have the validate module to use ``preserve_errors=True``.
        
        You can then use the ``flatten_errors`` function to turn your nested
        results dictionary into a flattened list of failures - useful for
        displaying meaningful error messages.
        """
        if section is None:
            if self.configspec is None:
                raise ValueError('No configspec supplied.')
            if preserve_errors:
                from validate import VdtMissingValue
                self._vdtMissingValue = VdtMissingValue
            section = self
            if copy:
                section.initial_comment = section.configspec.initial_comment
                section.final_comment = section.configspec.final_comment
                section.encoding = section.configspec.encoding
                section.BOM = section.configspec.BOM
                section.newlines = section.configspec.newlines
                section.indent_type = section.configspec.indent_type
        configspec = section.configspec
        self._set_configspec(section, copy)

        def validate_entry(entry, spec, val, missing, ret_true, ret_false):
            section.default_values.pop(entry, None)
            try:
                section.default_values[entry] = validator.get_default_value(configspec[entry])
            except (KeyError, AttributeError, validator.baseErrorClass):
                pass

            try:
                check = validator.check(spec, val,
                  missing=missing)
            except validator.baseErrorClass as e:
                try:
                    if not preserve_errors or isinstance(e, self._vdtMissingValue):
                        out[entry] = False
                    else:
                        out[entry] = e
                        ret_false = False
                    ret_true = False
                finally:
                    e = None
                    del e

            else:
                ret_false = False
                out[entry] = True
                if self.stringify or missing:
                    if not self.stringify:
                        if isinstance(check, (list, tuple)):
                            check = [self._str(item) for item in check]
                        elif missing and check is None:
                            check = ''
                        else:
                            check = self._str(check)
                    if check != val or (missing):
                        section[entry] = check
                    if not copy:
                        if missing:
                            if entry not in section.defaults:
                                section.defaults.append(entry)
                    return (
                     ret_true, ret_false)

        out = {}
        ret_true = True
        ret_false = True
        unvalidated = [k for k in section.scalars if k not in configspec]
        incorrect_sections = [k for k in configspec.sections if k in section.scalars]
        incorrect_scalars = [k for k in configspec.scalars if k in section.sections]
        for entry in configspec.scalars:
            if entry in ('__many__', '___many___'):
                continue
            else:
                if entry not in section.scalars or entry in section.defaults:
                    missing = True
                    val = None
                    if not copy or entry not in section.scalars:
                        section.comments[entry] = configspec.comments.get(entry, [])
                        section.inline_comments[entry] = configspec.inline_comments.get(entry, '')
                else:
                    missing = False
                    val = section[entry]
                ret_true, ret_false = validate_entry(entry, configspec[entry], val, missing, ret_true, ret_false)

        many = None
        if '__many__' in configspec.scalars:
            many = configspec['__many__']
        elif '___many___' in configspec.scalars:
            many = configspec['___many___']
        if many is not None:
            for entry in unvalidated:
                val = section[entry]
                ret_true, ret_false = validate_entry(entry, many, val, False, ret_true, ret_false)

            unvalidated = []
        for entry in incorrect_scalars:
            ret_true = False
            if not preserve_errors:
                out[entry] = False
            else:
                ret_false = False
                msg = 'Value %r was provided as a section' % entry
                out[entry] = validator.baseErrorClass(msg)

        for entry in incorrect_sections:
            ret_true = False
            if not preserve_errors:
                out[entry] = False
            else:
                ret_false = False
                msg = 'Section %r was provided as a single value' % entry
                out[entry] = validator.baseErrorClass(msg)

        for entry in section.sections:
            if section is self:
                if entry == 'DEFAULT':
                    continue
            if section[entry].configspec is None:
                unvalidated.append(entry)
                continue
            else:
                if copy:
                    section.comments[entry] = configspec.comments.get(entry, [])
                    section.inline_comments[entry] = configspec.inline_comments.get(entry, '')
                check = self.validate(validator, preserve_errors=preserve_errors, copy=copy, section=(section[entry]))
                out[entry] = check
            if check == False:
                ret_true = False
            else:
                if check == True:
                    ret_false = False
                else:
                    ret_true = False

        section.extra_values = unvalidated
        if preserve_errors:
            if not section._created:
                ret_false = False
            if ret_false:
                if preserve_errors:
                    if out:
                        ret_false = not any(out.values())
            if ret_true:
                return True
            if ret_false:
                return False
            return out

    def reset(self):
        """Clear ConfigObj instance and restore to 'freshly created' state."""
        self.clear()
        self._initialise()
        self.configspec = None
        self._original_configspec = None

    def reload(self):
        """
        Reload a ConfigObj from file.
        
        This method raises a ``ReloadError`` if the ConfigObj doesn't have
        a filename attribute pointing to a file.
        """
        if not isinstance(self.filename, six.string_types):
            raise ReloadError()
        filename = self.filename
        current_options = {}
        for entry in OPTION_DEFAULTS:
            if entry == 'configspec':
                continue
            else:
                current_options[entry] = getattr(self, entry)

        configspec = self._original_configspec
        current_options['configspec'] = configspec
        self.clear()
        self._initialise(current_options)
        self._load(filename, configspec)


class SimpleVal(object):
    __doc__ = '\n    A simple validator.\n    Can be used to check that all members expected are present.\n    \n    To use it, provide a configspec with all your members in (the value given\n    will be ignored). Pass an instance of ``SimpleVal`` to the ``validate``\n    method of your ``ConfigObj``. ``validate`` will return ``True`` if all\n    members are present, or a dictionary with True/False meaning\n    present/missing. (Whole missing sections will be replaced with ``False``)\n    '

    def __init__(self):
        self.baseErrorClass = ConfigObjError

    def check(self, check, member, missing=False):
        """A dummy check method, always returns the value unchanged."""
        if missing:
            raise self.baseErrorClass()
        return member


def flatten_errors(cfg, res, levels=None, results=None):
    """
    An example function that will turn a nested dictionary of results
    (as returned by ``ConfigObj.validate``) into a flat list.
    
    ``cfg`` is the ConfigObj instance being checked, ``res`` is the results
    dictionary returned by ``validate``.
    
    (This is a recursive function, so you shouldn't use the ``levels`` or
    ``results`` arguments - they are used by the function.)
    
    Returns a list of keys that failed. Each member of the list is a tuple::
    
        ([list of sections...], key, result)
    
    If ``validate`` was called with ``preserve_errors=False`` (the default)
    then ``result`` will always be ``False``.

    *list of sections* is a flattened list of sections that the key was found
    in.
    
    If the section was missing (or a section was expected and a scalar provided
    - or vice-versa) then key will be ``None``.
    
    If the value (or section) was missing then ``result`` will be ``False``.
    
    If ``validate`` was called with ``preserve_errors=True`` and a value
    was present, but failed the check, then ``result`` will be the exception
    object returned. You can use this as a string that describes the failure.
    
    For example *The value "3" is of the wrong type*.
    """
    if levels is None:
        levels = []
        results = []
    if res == True:
        return sorted(results)
    if res == False or (isinstance(res, Exception)):
        results.append((levels[:], None, res))
        if levels:
            levels.pop()
        return sorted(results)
    for key, val in list(res.items()):
        if val == True:
            continue
        if isinstance(cfg.get(key), dict):
            levels.append(key)
            flatten_errors(cfg[key], val, levels, results)
            continue
        else:
            results.append((levels[:], key, val))

    if levels:
        levels.pop()
    return sorted(results)


def get_extra_values(conf, _prepend=()):
    """
    Find all the values and sections not in the configspec from a validated
    ConfigObj.
    
    ``get_extra_values`` returns a list of tuples where each tuple represents
    either an extra section, or an extra value.
    
    The tuples contain two values, a tuple representing the section the value 
    is in and the name of the extra values. For extra values in the top level
    section the first member will be an empty tuple. For values in the 'foo'
    section the first member will be ``('foo',)``. For members in the 'bar'
    subsection of the 'foo' section the first member will be ``('foo', 'bar')``.
    
    NOTE: If you call ``get_extra_values`` on a ConfigObj instance that hasn't
    been validated it will return an empty list.
    """
    out = []
    out.extend([(_prepend, name) for name in conf.extra_values])
    for name in conf.sections:
        if name not in conf.extra_values:
            out.extend(get_extra_values(conf[name], _prepend + (name,)))

    return out
# okay decompiling lib.bflb_configobj.pyc
