settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(4cm);

point A = origin;
point B = (3, 0);
point C = (0, 3);
point P = (4, 0);
point Q = (0, 4);

draw(origin -- (5, 0), Arrow);
draw(A -- (0, 5), Arrow);
draw(B -- C);
draw(P -- Q);
label("$A$", origin, SW);
label("$B(a, 0)$", B, S);
label("$C(0, a)$", C, W);
label("$P(h, 0)$", P + (0.5, 0), S);
label("$Q(0, k)$", Q, W);
label("$X$", (5, 0), N);
label("$Y$", (0, 5), E);
