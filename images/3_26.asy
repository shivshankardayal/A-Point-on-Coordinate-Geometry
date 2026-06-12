settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(4cm);

point O = origin;
point A = (2*sqrt(3), 0);
point B = (0, 2);
point L = (sqrt(3)/2, 3/2);

draw(O -- (4, 0), Arrow);
draw(O -- (0, 3), Arrow);
draw(A -- B);
draw(origin -- L);
label("$O$", origin, SW);
label("$X$", (4, 0), E);
label("$Y$", (0, 3), N);
label("$A$", A, S);
label("$B$", B, W);
label("$L$", L, NE);
markangle("$60^\circ$", radius=5, A, O, L);
markangle("$30^\circ$", radius=10, L, O, B);
