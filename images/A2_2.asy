settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(5cm);

draw(origin -- (1.5, 0), Arrow);
draw(origin -- (0, 1.5), Arrow);
draw((1, 0) -- (0, 1));
label("$B(0, k)$", (0, 1), E);
label("$A(h, 0)$", (1, 0), S);
label("$P(x, y)$", (0.5, 0.5), NE);
label("$O$", origin, SW);
