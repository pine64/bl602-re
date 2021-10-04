import difflib
from html import escape
from io import StringIO
from typing import TypeVar, List, Union, Callable, Tuple

HTML_HEADER = '''<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>funcdiff</title>
<style>
html, body, table.diff { font-family: monospace; }
html, body, pre { margin: 0; padding: 0; }
table.diff { border:medium; }
.diff_header { background-color:#e0e0e0 }
td.diff_header { text-align:right; }
.diff_next {background-color:#c0c0c0}
.diff_add {background-color:#aaffaa}
.diff_chg {background-color:#ffff77}
.diff_sub {background-color:#ffaaaa}
h1, h2, h3 { display: inline-block; margin: 0; font-weight: normal; }
h1 { font-size: 2em; }
h2 { font-size: 1.5em; }
h3 { font-size: 1em; }
h1::before, h2::before, h3::before { font-family: serif; font-weight: normal; margin-right: .3em; }
.lib h1::before { content: '📚'; }
.hdr h1::before { content: '📄'; }
.obj h2::before { content: '📦'; }
.func h3::before { content: 'ƒ'; font-style: italic; }
.lib, .obj, .hdr {
    border: .1em solid #aaa;
    border-radius: .3em;
    padding: .3em;
}
.obj {
    margin-top: .5em;
}
.func.missing { background: rgba(128, 0, 0, 0.1); }
.func.missing h3::before { background: rgb(128, 0, 0); }
.func.different { background: rgba(255, 0, 0, 0.1); }
.func.missing h3::before { background: rgb(255, 0, 0); }
.func.equivalent, .obj.equivalent { background: rgba(0, 255, 0, 0.1); }
.func.missing h3::before { background: rgb(255, 0, 0); }
summary { cursor: pointer; }
details[open] summary { margin-bottom: .3em; }
.buildtime, .similarity { display: inline-block; float: right; }
</style>
</head>
<body>
'''

HTML_FOOTER = '''<script>
let unroll = document.getElementById(window.location.hash.substring(1));
while (unroll) {
    if (unroll.tagName === 'DETAILS') {
        unroll.open = true;
    }
    unroll = unroll.parentElement;
}
setTimeout(() => {
    document.querySelectorAll('details').forEach(x => x.addEventListener("toggle", () => {
        if (x.hasAttribute("open")) {
            history.replaceState({}, 'funcdiff: ' + x.id, '#' + x.id);
        }
    }));
}, 100);
</script>
</body>
'''

T = TypeVar('T')
U = TypeVar('U')


def make_diff_table(original_a: List[T], original_b: List[T], diffkey_a: List[U], diffkey_b: List[U],
                    get_offset: Callable[[T], str], get_text: Callable[[T], str],
                    ignore_diff: Callable[[T], bool] = lambda _: False) -> Tuple[str, float]:
    matcher = difflib.SequenceMatcher(None, diffkey_a, diffkey_b)
    diffed_a: List[Union[T, None]] = []
    diffed_b: List[Union[T, None]] = []
    chg_lines: List[bool] = []
    for tag, alo, ahi, blo, bhi in matcher.get_opcodes():
        if tag == 'replace':
            diff_len = max(ahi - alo, bhi - blo)
            diffed_a += original_a[alo:ahi]
            diffed_a += [None] * (diff_len - (ahi - alo))
            diffed_b += original_b[blo:bhi]
            diffed_b += [None] * (diff_len - (bhi - blo))
            chg_lines += [True] * diff_len
        elif tag == 'delete':
            diffed_a += original_a[alo:ahi]
            diffed_b += [None] * (ahi - alo)
            chg_lines += [False] * (ahi - alo)
        elif tag == 'insert':
            diffed_a += [None] * (bhi - blo)
            diffed_b += original_b[blo:bhi]
            chg_lines += [False] * (bhi - blo)
        elif tag == 'equal':
            diffed_a += original_a[alo:ahi]
            diffed_b += original_b[blo:bhi]
            chg_lines += [False] * (bhi - blo)

    table = StringIO()
    table.write('<table rules="groups" class="diff" cellspacing="0" cellpadding="0">')
    table.write('<colgroup></colgroup>' * 4)
    table.write('<tbody>')

    def line(ah, a, bh, b):
        table.write(f'<tr><td class="diff_header">{ah}</td><td><pre>{a}</pre></td>'
                    f'<td class="diff_header">{bh}</td><td><pre>{b}</pre></td></tr>')

    for a, b, chg in zip(diffed_a, diffed_b, chg_lines):
        ao = escape(get_offset(a)) if a else ''
        bo = escape(get_offset(b)) if b else ''
        at = get_text(a) if a else ''
        bt = get_text(b) if b else ''
        if chg:
            line(ao, f'<span class="diff_chg">{escape(at)}</span>',
                 bo, f'<span class="diff_chg">{escape(bt)}</span>')
        elif a is None:
            line('', '', bo, escape(bt) if ignore_diff(b) else f'<span class="diff_add">{escape(bt)}</span>')
        elif b is None:
            line(ao, escape(at) if ignore_diff(a) else f'<span class="diff_sub">{escape(at)}</span>', '', '')
        else:
            if ignore_diff(a) or ignore_diff(b):
                line('', escape(at), '', escape(bt))
                continue
            linematcher = difflib.SequenceMatcher(None, at, bt)
            ad = ''
            bd = ''
            for tag, alo, ahi, blo, bhi in linematcher.get_opcodes():
                if tag == 'replace':
                    ad += f'<span class="diff_chg">{escape(at[alo:ahi])}</span>'
                    bd += f'<span class="diff_chg">{escape(bt[blo:bhi])}</span>'
                elif tag == 'delete':
                    ad += f'<span class="diff_del">{escape(at[alo:ahi])}</span>'
                elif tag == 'insert':
                    bd += f'<span class="diff_add">{escape(bt[blo:bhi])}</span>'
                elif tag == 'equal':
                    ad += escape(at[alo:ahi])
                    bd += escape(bt[blo:bhi])
            line(ao, ad, bo, bd)

    table.write('</tbody></table>')
    return table.getvalue(), matcher.ratio()
