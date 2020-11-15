# decompyle3 version 3.3.2
# Python bytecode 3.7 (3394)
# Decompiled from: Python 3.8.5 (default, Jul 28 2020, 12:59:40) 
# [GCC 9.3.0]
# Embedded file name: site-packages\fdt\__init__.py
Instruction context:
   
 L. 500       528  LOAD_GLOBAL              Exception
                 530  LOAD_STR                 'Unknown Tag: {}'
                 532  LOAD_METHOD              format
                 534  LOAD_FAST                'tag'
                 536  CALL_METHOD_1         1  '1 positional argument'
                 538  CALL_FUNCTION_1       1  '1 positional argument'
                 540  RAISE_VARARGS_1       1  'exception instance'
               542_0  COME_FROM           492  '492'
               542_1  COME_FROM           338  '338'
->               542  JUMP_BACK           160  'to 160'
                 544  POP_BLOCK        
               546_0  COME_FROM_LOOP      156  '156'
import os
from .header import Header, DTB_BEGIN_NODE, DTB_END_NODE, DTB_PROP, DTB_END, DTB_NOP
from .items import new_property, Property, PropBytes, PropWords, PropStrings, PropIncBin, Node
from .misc import strip_comments, split_to_lines, get_version_info, extract_string
__author__ = 'Martin Olejar'
__contact__ = 'martin.olejar@gmail.com'
__version__ = '0.2.0'
__license__ = 'Apache 2.0'
__status__ = 'Development'
__all__ = [
 'FDT',
 'Node',
 'Header',
 'Property',
 'PropBytes',
 'PropWords',
 'PropStrings',
 'PropIncBin',
 'parse_dts',
 'parse_dtb',
 'diff']

class ItemType:
    NODE = 0
    PROP = 1
    BOTH = 3


class FDT:
    __doc__ = ' Flattened Device Tree Class '

    @property
    def empty(self):
        return self.root.empty

    def __init__(self, header=None):
        """
        FDT class constructor

        :param header:
        """
        self.entries = []
        self.header = Header() if header is None else header
        self.root = Node('/')

    def __str__(self):
        """ String representation """
        return self.info()

    def info(self):
        """ Return object info in human readable format """
        msg = 'FDT Content:\n'
        for path, nodes, props in self.walk():
            msg += '{} [{}N, {}P]\n'.format(path, len(nodes), len(props))

        return msg

    def get_node(self, path: str, create: bool=False) -> Node:
        """ 
        Get node object from specified path
        
        :param path: Path as string
        :param create: If True, not existing nodes will be created
        """
        assert isinstance(path, str), 'Node path must be a string type !'
        node = self.root
        path = path.lstrip('/')
        if path:
            names = path.split('/')
            for name in names:
                item = node.get_subnode(name)
                if item is None:
                    if create:
                        item = Node(name)
                        node.append(item)
                    else:
                        raise ValueError('Path "{}" doesn\'t exists'.format(path))
                node = item

        return node

    def get_property(self, name: str, path: str='') -> Property:
        """ 
        Get property object by name from specified path
        
        :param name: Property name
        :param path: Path to sub-node
        """
        return self.get_node(path).get_property(name)

    def set_property(self, name: str, value, path: str='', create: bool=True):
        """
        Set property object by name
        
        :param name: Property name
        :param value: Property value
        :param path: Path to subnode
        :param create: If True, not existing nodes will be created
        """
        self.get_node(path, create).set_property(name, value)

    def exist_node(self, path: str) -> bool:
        """ 
        Check if <path>/node exist and return True
        
        :param path: path/node name
        :return True if <path>/node exist else False
        """
        try:
            self.get_node(path)
        except ValueError:
            return False
        else:
            return True

    def exist_property(self, name: str, path: str='') -> bool:
        """ 
        Check if property exist
        
        :param name: Property name
        :param path: The path
        """
        if self.exist_node(path):
            return self.get_node(path).exist_property(name)
        return False

    def remove_node(self, name: str, path: str=''):
        """ 
        Remove node obj by path/name. Raises ValueError if path/name doesn't exist
        
        :param name: Node name
        :param path: Path to sub-node
        """
        self.get_node(path).remove_subnode(name)

    def remove_property(self, name: str, path: str=''):
        """ 
        Remove property obj by name. Raises ValueError if path/name doesn't exist
        
        :param name: Property name
        :param path: Path to subnode
        """
        self.get_node(path).remove_property(name)

    def add_item(self, obj, path: str='', create: bool=True):
        """ 
        Add sub-node or property at specified path. Raises ValueError if path doesn't exist
        
        :param obj: The node or property object
        :param path: The path to subnode
        :param create: If True, not existing nodes will be created
        """
        self.get_node(path, create).append(obj)

    def search(self, name: str, itype: int=ItemType.BOTH, path: str='') -> list:
        """ 
        Search properties and/or nodes with specified name. Return list of founded items
        
        :param name: Property or Node name
        :param itype: Item type - NODE, PROP or BOTH
        :param path: Path to root node
        """
        assert isinstance(name, str), 'Property name must be a string type !'
        node = self.get_node(path)
        nodes = []
        items = []
        while True:
            nodes += node.nodes
            if itype == ItemType.NODE or (itype == ItemType.BOTH):
                if node.name == name:
                    items.append(node)
            if itype == ItemType.PROP or (itype == ItemType.BOTH):
                for p in node.props:
                    if p.name == name:
                        items.append(p)

            if not nodes:
                break
            else:
                node = nodes.pop()

        return items

    def walk(self, path: str='', relative: bool=False) -> list:
        """ 
        Walk trough nodes and return relative/absolute path with list of sub-nodes and properties
        
        :param path: The path to root node
        :param relative: True for relative or False for absolute return path
        """
        all_nodes = []
        node = self.get_node(path)
        while True:
            all_nodes += node.nodes
            current_path = f"{node.path}/{node.name}"
            current_path = current_path.replace('///', '/')
            current_path = current_path.replace('//', '/')
            if path:
                if relative:
                    current_path = current_path.replace(path, '').lstrip('/')
            yield (
             current_path, node.nodes, node.props)
            if not all_nodes:
                break
            else:
                node = all_nodes.pop()

    def merge(self, fdt_obj, replace: bool=True):
        """
        Merge external FDT object into this object.
        
        :param fdt_obj: The FDT object which will be merged into this
        :param replace: True for replace existing items or False for keep old items
        """
        assert isinstance(fdt_obj, FDT)
        if self.header.version is None:
            self.header = fdt_obj.header
        elif fdt_obj.header.version is not None:
            if fdt_obj.header.version > self.header.version:
                self.header.version = fdt_obj.header.version
        if fdt_obj.entries:
            for in_entry in fdt_obj.entries:
                exist = False
                for index in range(len(self.entries)):
                    if self.entries[index]['address'] == in_entry['address']:
                        self.entries[index]['address'] = in_entry['size']
                        exist = True
                        break

                if not exist:
                    self.entries.append(in_entry)

        self.root.merge(fdt_obj.get_node('/'), replace)

    def update_phandles(self):
        all_nodes = []
        phandle_value = 0
        no_phandle_nodes = []
        node = self.root
        all_nodes += self.root.nodes
        while all_nodes:
            props = (
             node.get_property('phandle'), node.get_property('linux,phandle'))
            value = None
            for i, p in enumerate(props):
                if isinstance(p, PropWords):
                    if isinstance(p.value, int):
                        if i == 1:
                            value = None if p.value != value else p.value

            if value is None:
                no_phandle_nodes.append(node)
            elif phandle_value < value:
                phandle_value = value
            node = all_nodes.pop()
            all_nodes += node.nodes

        if phandle_value > 0:
            phandle_value += 1
        for node in no_phandle_nodes:
            node.set_property('linux,phandle', phandle_value)
            node.set_property('phandle', phandle_value)
            phandle_value += 1

    def to_dts(self, tabsize: int=4) -> str:
        """
        Store FDT Object into string format (DTS)

        :param tabsize:
        """
        result = '/dts-v1/;\n'
        if self.header.version is not None:
            result += '// version: {}\n'.format(self.header.version)
            result += '// last_comp_version: {}\n'.format(self.header.last_comp_version)
            if self.header.version >= 2:
                result += '// boot_cpuid_phys: 0x{:X}\n'.format(self.header.boot_cpuid_phys)
        result += '\n'
        if self.entries:
            for entry in self.entries:
                result += '/memreserve/ '
                result += '{:#x} '.format(entry['address']) if entry['address'] else '0 '
                result += '{:#x}'.format(entry['size']) if entry['size'] else '0'
                result += ';\n'

        if self.root is not None:
            result += self.root.to_dts(tabsize)
        return result

    def to_dtb(self, version: int=None, last_comp_version: int=None, boot_cpuid_phys: int=None) -> bytes:
        """
        Export FDT Object into Binary Blob format (DTB)

        :param version:
        :param last_comp_version:
        :param boot_cpuid_phys:
        """
        if self.root is None:
            return b''
        from struct import pack
        if version is not None:
            self.header.version = version
        if last_comp_version is not None:
            self.header.last_comp_version = last_comp_version
        if boot_cpuid_phys is not None:
            self.header.boot_cpuid_phys = boot_cpuid_phys
        if self.header.version is None:
            raise Exception('DTB Version must be specified !')
        blob_entries = bytes()
        if self.entries:
            for entry in self.entries:
                blob_entries += pack('>QQ', entry['address'], entry['size'])

        blob_entries += pack('>QQ', 0, 0)
        blob_data_start = self.header.size + len(blob_entries)
        blob_data, blob_strings, data_pos = self.root.to_dtb('', blob_data_start, self.header.version)
        blob_data += pack('>I', DTB_END)
        self.header.size_dt_strings = len(blob_strings)
        self.header.size_dt_struct = len(blob_data)
        self.header.off_mem_rsvmap = self.header.size
        self.header.off_dt_struct = blob_data_start
        self.header.off_dt_strings = blob_data_start + len(blob_data)
        self.header.total_size = blob_data_start + len(blob_data) + len(blob_strings)
        blob_header = self.header.export()
        return blob_header + blob_entries + blob_data + blob_strings.encode('ascii')


def parse_dts(text: str, root_dir: str='') -> FDT:
    """
    Parse DTS text file and create FDT Object

    :param text:
    :param root_dir: 
    """
    ver = get_version_info(text)
    text = strip_comments(text)
    dts_lines = split_to_lines(text)
    fdt_obj = FDT()
    if 'version' in ver:
        fdt_obj.header.version = ver['version']
    if 'last_comp_version' in ver:
        fdt_obj.header.last_comp_version = ver['last_comp_version']
    if 'boot_cpuid_phys' in ver:
        fdt_obj.header.boot_cpuid_phys = ver['boot_cpuid_phys']
    fdt_obj.entries = []
    for line in dts_lines:
        if line.endswith('{'):
            break
        if line.startswith('/memreserve/'):
            line = line.strip(';')
            line = line.split()
            if len(line) != 3:
                raise Exception()
            else:
                fdt_obj.entries.append({'address':int(line[1], 0),  'size':int(line[2], 0)})

    curnode = None
    fdt_obj.root = None
    for line in dts_lines:
        if line.endswith('{'):
            node_name = line.split()[0]
            new_node = Node(node_name)
            if fdt_obj.root is None:
                fdt_obj.root = new_node
            else:
                if curnode is not None:
                    curnode.append(new_node)
                curnode = new_node
        else:
            if line.endswith('}'):
                if curnode is not None:
                    curnode = curnode.parent
            else:
                if line.find('=') == -1:
                    prop_name = line
                    prop_obj = Property(prop_name)
                else:
                    line = line.split('=', maxsplit=1)
                    prop_name = line[0].rstrip(' ')
                    prop_value = line[1].lstrip(' ')
                    if prop_value.startswith('<'):
                        prop_obj = PropWords(prop_name)
                        prop_value = prop_value.replace('<', '').replace('>', '')
                        for prop in prop_value.split():
                            if prop.startswith('0x'):
                                prop_obj.append(int(prop, 16))
                            else:
                                if prop.startswith('0b'):
                                    prop_obj.append(int(prop, 2))
                                else:
                                    if prop.startswith('0'):
                                        prop_obj.append(int(prop, 8))
                                    else:
                                        prop_obj.append(int(prop))

                    elif prop_value.startswith('['):
                        prop_obj = PropBytes(prop_name)
                        prop_value = prop_value.replace('[', '').replace(']', '')
                        for prop in prop_value.split():
                            prop_obj.append(int(prop, 16))

                    elif prop_value.startswith('/incbin/'):
                        prop_value = prop_value.replace('/incbin/("', '').replace('")', '')
                        prop_value = prop_value.split(',')
                        file_path = os.path.join(root_dir, prop_value[0].strip())
                        file_offset = int(prop_value.strip(), 0) if len(prop_value) > 1 else 0
                        file_size = int(prop_value.strip(), 0) if len(prop_value) > 2 else 0
                        if not (file_path is None or os.path.exists(file_path)):
                            raise Exception("File path doesn't exist: {}".format(file_path))
                        with open(file_path, 'rb') as f:
                            f.seek(file_offset)
                            prop_data = f.read(file_size) if file_size > 0 else f.read()
                        prop_obj = PropIncBin(prop_name, prop_data, os.path.split(file_path)[1])
                    elif prop_value.startswith('/plugin/'):
                        raise NotImplementedError('Not implemented property value: /plugin/')
                    elif prop_value.startswith('/bits/'):
                        raise NotImplementedError('Not implemented property value: /bits/')
                    else:
                        prop_obj = PropStrings(prop_name)
                        for prop in prop_value.split('",'):
                            prop = prop.replace('"', '')
                            prop = prop.strip()
                            prop_obj.append(prop)

                if curnode is not None:
                    curnode.append(prop_obj)

    return fdt_obj


def parse_dtb--- This code section failed: ---

 L. 449         0  LOAD_GLOBAL              isinstance
                2  LOAD_FAST                'data'
                4  LOAD_GLOBAL              bytes
                6  LOAD_GLOBAL              bytearray
                8  BUILD_TUPLE_2         2 
               10  CALL_FUNCTION_2       2  '2 positional arguments'
               12  POP_JUMP_IF_TRUE     22  'to 22'
               14  LOAD_ASSERT              AssertionError
               16  LOAD_STR                 'Invalid argument type'
               18  CALL_FUNCTION_1       1  '1 positional argument'
               20  RAISE_VARARGS_1       1  'exception instance'
             22_0  COME_FROM            12  '12'

 L. 451        22  LOAD_CONST               0
               24  LOAD_CONST               ('unpack_from',)
               26  IMPORT_NAME              struct
               28  IMPORT_FROM              unpack_from
               30  STORE_FAST               'unpack_from'
               32  POP_TOP          

 L. 453        34  LOAD_GLOBAL              FDT
               36  CALL_FUNCTION_0       0  '0 positional arguments'
               38  STORE_FAST               'fdt_obj'

 L. 455        40  LOAD_GLOBAL              Header
               42  LOAD_METHOD              parse
               44  LOAD_FAST                'data'
               46  CALL_METHOD_1         1  '1 positional argument'
               48  LOAD_FAST                'fdt_obj'
               50  STORE_ATTR               header

 L. 457        52  LOAD_FAST                'fdt_obj'
               54  LOAD_ATTR                header
               56  LOAD_ATTR                off_mem_rsvmap
               58  STORE_FAST               'index'

 L. 458        60  SETUP_LOOP          138  'to 138'
             62_0  COME_FROM           134  '134'

 L. 459        62  LOAD_GLOBAL              dict
               64  LOAD_GLOBAL              zip
               66  LOAD_CONST               ('address', 'size')
               68  LOAD_FAST                'unpack_from'
               70  LOAD_STR                 '>QQ'
               72  LOAD_FAST                'data'
               74  LOAD_FAST                'offset'
               76  LOAD_FAST                'index'
               78  BINARY_ADD       
               80  CALL_FUNCTION_3       3  '3 positional arguments'
               82  CALL_FUNCTION_2       2  '2 positional arguments'
               84  CALL_FUNCTION_1       1  '1 positional argument'
               86  STORE_FAST               'entrie'

 L. 460        88  LOAD_FAST                'index'
               90  LOAD_CONST               16
               92  INPLACE_ADD      
               94  STORE_FAST               'index'

 L. 461        96  LOAD_FAST                'entrie'
               98  LOAD_STR                 'address'
              100  BINARY_SUBSCR    
              102  LOAD_CONST               0
              104  COMPARE_OP               ==
              106  POP_JUMP_IF_FALSE   122  'to 122'
              108  LOAD_FAST                'entrie'
              110  LOAD_STR                 'size'
              112  BINARY_SUBSCR    
              114  LOAD_CONST               0
              116  COMPARE_OP               ==
              118  POP_JUMP_IF_FALSE   122  'to 122'

 L. 462       120  BREAK_LOOP       
            122_0  COME_FROM           118  '118'
            122_1  COME_FROM           106  '106'

 L. 463       122  LOAD_FAST                'fdt_obj'
              124  LOAD_ATTR                entries
              126  LOAD_METHOD              append
              128  LOAD_FAST                'entrie'
              130  CALL_METHOD_1         1  '1 positional argument'
              132  POP_TOP          
              134  JUMP_BACK            62  'to 62'
              136  POP_BLOCK        
            138_0  COME_FROM_LOOP       60  '60'

 L. 465       138  LOAD_CONST               None
              140  STORE_FAST               'current_node'

 L. 466       142  LOAD_CONST               None
              144  LOAD_FAST                'fdt_obj'
              146  STORE_ATTR               root

 L. 467       148  LOAD_FAST                'fdt_obj'
              150  LOAD_ATTR                header
              152  LOAD_ATTR                off_dt_struct
              154  STORE_FAST               'index'

 L. 468   156_158  SETUP_LOOP          546  'to 546'
            160_0  COME_FROM           542  '542'
            160_1  COME_FROM           526  '526'
            160_2  COME_FROM           512  '512'
            160_3  COME_FROM           348  '348'
            160_4  COME_FROM           320  '320'

 L. 469       160  LOAD_GLOBAL              len
              162  LOAD_FAST                'data'
              164  CALL_FUNCTION_1       1  '1 positional argument'
              166  LOAD_FAST                'offset'
              168  LOAD_FAST                'index'
              170  BINARY_ADD       
              172  LOAD_CONST               4
              174  BINARY_ADD       
              176  COMPARE_OP               <
              178  POP_JUMP_IF_FALSE   188  'to 188'

 L. 470       180  LOAD_GLOBAL              Exception
              182  LOAD_STR                 'Index out of range !'
              184  CALL_FUNCTION_1       1  '1 positional argument'
              186  RAISE_VARARGS_1       1  'exception instance'
            188_0  COME_FROM           178  '178'

 L. 471       188  LOAD_FAST                'unpack_from'
              190  LOAD_STR                 '>I'
              192  LOAD_FAST                'data'
              194  LOAD_FAST                'offset'
              196  LOAD_FAST                'index'
              198  BINARY_ADD       
              200  CALL_FUNCTION_3       3  '3 positional arguments'
              202  LOAD_CONST               0
              204  BINARY_SUBSCR    
              206  STORE_FAST               'tag'

 L. 472       208  LOAD_FAST                'index'
              210  LOAD_CONST               4
              212  INPLACE_ADD      
              214  STORE_FAST               'index'

 L. 473       216  LOAD_FAST                'tag'
              218  LOAD_GLOBAL              DTB_BEGIN_NODE
              220  COMPARE_OP               ==
          222_224  POP_JUMP_IF_FALSE   322  'to 322'

 L. 474       226  LOAD_GLOBAL              extract_string
              228  LOAD_FAST                'data'
              230  LOAD_FAST                'offset'
              232  LOAD_FAST                'index'
              234  BINARY_ADD       
              236  CALL_FUNCTION_2       2  '2 positional arguments'
              238  STORE_FAST               'node_name'

 L. 475       240  LOAD_FAST                'index'
              242  LOAD_GLOBAL              len
              244  LOAD_FAST                'node_name'
              246  CALL_FUNCTION_1       1  '1 positional argument'
              248  BINARY_ADD       
              250  LOAD_CONST               4
              252  BINARY_ADD       
              254  LOAD_CONST               -4
              256  BINARY_AND       
              258  STORE_FAST               'index'

 L. 476       260  LOAD_FAST                'node_name'
          262_264  POP_JUMP_IF_TRUE    270  'to 270'

 L. 476       266  LOAD_STR                 '/'
              268  STORE_FAST               'node_name'
            270_0  COME_FROM           262  '262'

 L. 477       270  LOAD_GLOBAL              Node
              272  LOAD_FAST                'node_name'
              274  CALL_FUNCTION_1       1  '1 positional argument'
              276  STORE_FAST               'new_node'

 L. 478       278  LOAD_FAST                'fdt_obj'
              280  LOAD_ATTR                root
              282  LOAD_CONST               None
              284  COMPARE_OP               is
          286_288  POP_JUMP_IF_FALSE   296  'to 296'

 L. 479       290  LOAD_FAST                'new_node'
              292  LOAD_FAST                'fdt_obj'
              294  STORE_ATTR               root
            296_0  COME_FROM           286  '286'

 L. 480       296  LOAD_FAST                'current_node'
              298  LOAD_CONST               None
              300  COMPARE_OP               is-not
          302_304  POP_JUMP_IF_FALSE   316  'to 316'

 L. 481       306  LOAD_FAST                'current_node'
              308  LOAD_METHOD              append
              310  LOAD_FAST                'new_node'
              312  CALL_METHOD_1         1  '1 positional argument'
              314  POP_TOP          
            316_0  COME_FROM           302  '302'

 L. 482       316  LOAD_FAST                'new_node'
              318  STORE_FAST               'current_node'
              320  JUMP_BACK           160  'to 160'
            322_0  COME_FROM           222  '222'

 L. 483       322  LOAD_FAST                'tag'
              324  LOAD_GLOBAL              DTB_END_NODE
              326  COMPARE_OP               ==
          328_330  POP_JUMP_IF_FALSE   350  'to 350'

 L. 484       332  LOAD_FAST                'current_node'
              334  LOAD_CONST               None
              336  COMPARE_OP               is-not
          338_340  POP_JUMP_IF_FALSE   542  'to 542'

 L. 485       342  LOAD_FAST                'current_node'
              344  LOAD_ATTR                parent
              346  STORE_FAST               'current_node'
              348  JUMP_BACK           160  'to 160'
            350_0  COME_FROM           328  '328'

 L. 486       350  LOAD_FAST                'tag'
              352  LOAD_GLOBAL              DTB_PROP
              354  COMPARE_OP               ==
          356_358  POP_JUMP_IF_FALSE   514  'to 514'

 L. 487       360  LOAD_FAST                'unpack_from'
              362  LOAD_STR                 '>II'
              364  LOAD_FAST                'data'
              366  LOAD_FAST                'offset'
              368  LOAD_FAST                'index'
              370  BINARY_ADD       
              372  CALL_FUNCTION_3       3  '3 positional arguments'
              374  UNPACK_SEQUENCE_2     2 
              376  STORE_FAST               'prop_size'
              378  STORE_FAST               'prop_string_pos'

 L. 488       380  LOAD_FAST                'index'
              382  LOAD_CONST               8
              384  BINARY_ADD       
              386  STORE_FAST               'prop_start'

 L. 489       388  LOAD_FAST                'fdt_obj'
              390  LOAD_ATTR                header
              392  LOAD_ATTR                version
              394  LOAD_CONST               16
              396  COMPARE_OP               <
          398_400  POP_JUMP_IF_FALSE   424  'to 424'
              402  LOAD_FAST                'prop_size'
              404  LOAD_CONST               8
              406  COMPARE_OP               >=
          408_410  POP_JUMP_IF_FALSE   424  'to 424'

 L. 490       412  LOAD_FAST                'prop_start'
              414  LOAD_CONST               7
              416  BINARY_ADD       
              418  LOAD_CONST               -8
              420  BINARY_AND       
              422  STORE_FAST               'prop_start'
            424_0  COME_FROM           408  '408'
            424_1  COME_FROM           398  '398'

 L. 491       424  LOAD_GLOBAL              extract_string
              426  LOAD_FAST                'data'
              428  LOAD_FAST                'fdt_obj'
              430  LOAD_ATTR                header
              432  LOAD_ATTR                off_dt_strings
              434  LOAD_FAST                'prop_string_pos'
              436  BINARY_ADD       
              438  CALL_FUNCTION_2       2  '2 positional arguments'
              440  STORE_FAST               'prop_name'

 L. 492       442  LOAD_FAST                'data'
              444  LOAD_FAST                'offset'
              446  LOAD_FAST                'prop_start'
              448  BINARY_ADD       
              450  LOAD_FAST                'offset'
              452  LOAD_FAST                'prop_start'
              454  BINARY_ADD       
              456  LOAD_FAST                'prop_size'
              458  BINARY_ADD       
              460  BUILD_SLICE_2         2 
              462  BINARY_SUBSCR    
              464  STORE_FAST               'prop_raw_value'

 L. 493       466  LOAD_FAST                'prop_start'
              468  LOAD_FAST                'prop_size'
              470  BINARY_ADD       
              472  STORE_FAST               'index'

 L. 494       474  LOAD_FAST                'index'
              476  LOAD_CONST               3
              478  BINARY_ADD       
              480  LOAD_CONST               -4
              482  BINARY_AND       
              484  STORE_FAST               'index'

 L. 495       486  LOAD_FAST                'current_node'
              488  LOAD_CONST               None
              490  COMPARE_OP               is-not
          492_494  POP_JUMP_IF_FALSE   542  'to 542'

 L. 496       496  LOAD_FAST                'current_node'
              498  LOAD_METHOD              append
              500  LOAD_GLOBAL              new_property
              502  LOAD_FAST                'prop_name'
              504  LOAD_FAST                'prop_raw_value'
              506  CALL_FUNCTION_2       2  '2 positional arguments'
              508  CALL_METHOD_1         1  '1 positional argument'
              510  POP_TOP          
              512  JUMP_BACK           160  'to 160'
            514_0  COME_FROM           356  '356'

 L. 497       514  LOAD_FAST                'tag'
              516  LOAD_GLOBAL              DTB_END
              518  COMPARE_OP               ==
          520_522  POP_JUMP_IF_FALSE   528  'to 528'

 L. 498       524  BREAK_LOOP       
              526  JUMP_BACK           160  'to 160'
            528_0  COME_FROM           520  '520'

 L. 500       528  LOAD_GLOBAL              Exception
              530  LOAD_STR                 'Unknown Tag: {}'
              532  LOAD_METHOD              format
              534  LOAD_FAST                'tag'
              536  CALL_METHOD_1         1  '1 positional argument'
              538  CALL_FUNCTION_1       1  '1 positional argument'
              540  RAISE_VARARGS_1       1  'exception instance'
            542_0  COME_FROM           492  '492'
            542_1  COME_FROM           338  '338'
              542  JUMP_BACK           160  'to 160'
              544  POP_BLOCK        
            546_0  COME_FROM_LOOP      156  '156'

 L. 502       546  LOAD_FAST                'fdt_obj'
              548  RETURN_VALUE     
               -1  RETURN_LAST      

Parse error at or near `JUMP_BACK' instruction at offset 542


def diff(fdt1: FDT, fdt2: FDT) -> tuple:
    """ 
    Compare two flattened device tree objects and return list of 3 objects (same in 1 and 2, specific for 1, specific for 2)
    
    :param fdt1: The object 1 of FDT
    :param fdt2: The object 2 of FDT
    """
    assert isinstance(fdt1, FDT), 'Invalid argument type'
    assert isinstance(fdt2, FDT), 'Invalid argument type'
    fdt_a = FDT(fdt1.header)
    fdt_b = FDT(fdt2.header)
    if fdt1.header.version is not None and fdt2.header.version is not None:
        fdt_same = FDT(fdt1.header if fdt1.header.version > fdt2.header.version else fdt2.header)
    else:
        fdt_same = FDT(fdt1.header)
    if fdt1.entries:
        if fdt2.entries:
            for entry_a in fdt1.entries:
                for entry_b in fdt2.entries:
                    if entry_a['address'] == entry_b['address']:
                        if entry_a['size'] == entry_b['size']:
                            fdt_same.entries.append(entry_a)
                            break

    for entry_a in fdt1.entries:
        found = False
        for entry_s in fdt_same.entries:
            if entry_a['address'] == entry_s['address']:
                if entry_a['size'] == entry_s['size']:
                    found = True
                    break

        if not found:
            fdt_a.entries.append(entry_a)

    for entry_b in fdt2.entries:
        found = False
        for entry_s in fdt_same.entries:
            if entry_b['address'] == entry_s['address']:
                if entry_b['size'] == entry_s['size']:
                    found = True
                    break

        if not found:
            fdt_b.entries.append(entry_b)

    for path, nodes, props in fdt1.walk():
        try:
            rnode = fdt2.get_node(path)
        except:
            rnode = None

        for node_b in nodes:
            if not rnode is None or rnode.get_subnode(node_b.name) is None:
                fdt_a.add_item(Node(node_b.name), path)
            else:
                fdt_same.add_item(Node(node_b.name), path)

        for prop_a in props:
            if rnode is not None and prop_a == rnode.get_property(prop_a.name):
                fdt_same.add_item(prop_a.copy(), path)
            else:
                fdt_a.add_item(prop_a.copy(), path)

    for path, nodes, props in fdt2.walk():
        try:
            rnode = fdt_same.get_node(path)
        except:
            rnode = None

        for node_b in nodes:
            if not rnode is None:
                if rnode.get_subnode(node_b.name) is None:
                    pass
            fdt_b.add_item(Node(node_b.name), path)

        for prop_b in props:
            if not rnode is None:
                if prop_b != rnode.get_property(prop_b.name):
                    pass
            fdt_b.add_item(prop_b.copy(), path)

    return (fdt_same, fdt_a, fdt_b)
