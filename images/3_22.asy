settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(5cm);

draw(origin -- (4, 0), Arrow);
draw(origin -- (0, 2), Arrow);
draw((1, 0) -- (3, 2/sqrt(3)));
draw((1, 0) -- (3, 2*(2 - sqrt(3))));

label("$O$", origin, SW);
label("$X$", (4, 0), E);
label("$Y$", (0, 2), N);
label("$A(2, 0)$", (1, 0), S);
markangle("$15^\circ$", radius=15, (3, 0), (1, 0), (3, 2*(2 - sqrt(3))), 0.7*red);
markangle("$30^\circ$", radius=30, (3, 0), (1, 0), (3, 2/sqrt(3)), 0.7*blue);
label("$C$", (3, 2*(2 - sqrt(3))), NE);
label("$B$", (3, 2/sqrt(3)), E);
