
bi = """
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
\\begin{samepage}
\\begin{leftcolumn*}
\\EnglishColumn{{0}}
\\hspace{0pt}\
\\end{leftcolumn*}

\\begin{rightcolumn}\
\\PaliColumn{1}}}
\\hspace{0pt}
\\end{rightcolumn}
\\end{samepage}"""
