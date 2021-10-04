from typing import TypeVar, Dict, Callable, Iterable

_K = TypeVar('_K')
_V = TypeVar('_V')


def get_or_create(dict: Dict[_K, _V], key: _K, create: Callable[[_K], _V]) -> _V:
    try:
        return dict[key]
    except KeyError:
        value = create(key)
        dict[key] = value
        return value


def remove_prefixes(text: str, prefixes: Iterable[str]) -> str:
    for prefix in prefixes:
        if text.startswith(prefix):
            return text[len(prefix):]
    return text
