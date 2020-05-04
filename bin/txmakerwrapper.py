
alt = """
\\begin{{samepage}}
\\begingl[glneveryline={{\\PaliGlossA,\\PaliGlossB}}]
\
{0}
\\endgl
\\nopagebreak
\\linespread{{0.5}}
\\begin{{spacin}}{{0.2}}
{{\\PaliGlossFT {1}}}
\\end{{spacin}}
\\vskip 12pt
\\end{{samepage}}"""

paracol = """
\\begin{{samepage}}
\\begin{{leftcolumn*}}
\\EnglishColumn{{{0}}}
\\hspace{{0pt}}\
\\end{{leftcolumn*}}

\\begin{{rightcolumn}}\
\\PaliColumn{{{1}}}
\\hspace{{0pt}}
\\end{{rightcolumn}}
\\end{{samepage}}"""

alternating = """
\\begin{{absolutelynopagebreak}}
\\setstretch{{.7}}
{{\\PaliColumn{{{0}}}}}\\\\
\\begin{{addmargin}}[1em]{{2em}}
\\setstretch{{.5}}
{{\\EnglishColumn{{{1}}}}}\\\\
\\end{{addmargin}}
\\end{{absolutelynopagebreak}}
"""
alternating_noenglish = """
{{\\PaliColumn{{{0}}}}}\\\\
"""
alternating_nopali = """
{{\\EnglishColumn{{{0}}}}}\\\\
"""

html = """
<b>{0}</b><br>
<em>{1}</em><br>
"""

#alternating = """
#\\begingl
#\\gla {0}
#\\glb
#\\glft {1}
#\\endgl
#"""
