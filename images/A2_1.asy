settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(4cm);

circle c = circle((point)(0, 0), 2);
draw(c);
label("$A(-2, 0)$", (-2, 0), W);
label("$B(2, 0)$", (2, 0), E);

draw((-2, 0) -- (2, 0));
draw((-2, 0) -- (1.414, 1.414) -- (2, 0));
label("$P(x, y)$", (1.414, 1.414), NE);
