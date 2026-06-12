settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(4cm);

point A = origin;
point B = (2, 1);
point C = (3, 0);

draw(origin -- (4, 0), Arrow);
draw(origin -- (0, 2), Arrow);
draw(origin -- B -- C);
draw((1.5, 0) -- (1.5, 0.75) -- (2.25, 0.75) -- (2.25, 0));

label("$A(0, 0)$", origin, S);
label("$X$", (4, 0), E);
label("$Y$", (0, 2), N);
label("$B(2, 1)$", (2, 1), N);
label("$C(3, 0)$", (3, 0), S);
label("$P$", (1.5, 0), S);
label("$S$", (2.25, 0), S);
label("$Q$", (1.5, 0.75), NW);
label("$R$", (2.25, 0.75), NE);
