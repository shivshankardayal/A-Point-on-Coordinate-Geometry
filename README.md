# A Point on Cooordinate Geometry
A book on coordinate geometryu

It uses custom stylesheets to use LaTeX formulas directly in XML and LaTeX renders it.
In HTML we use MathJax to render it to Mathml.

# Build steps

You will need a Python/Perl/nodejs installation along with docbook-xsl-ns stylesheets. Install files in
`requirements.txt` and `package.json`. To build HTML run make target for `build/index-full.html`. To make
pdf you need `dblatex`. Run make target ffor `pdf/cg.pdf` and you will have PDF in `pdf` folder.
