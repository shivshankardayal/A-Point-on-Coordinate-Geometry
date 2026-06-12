settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(4cm);

draw((-3, 0) -- (3, 0), Arrows);
draw((0, -3) -- (0, 3), Arrows);

draw((2, -2) -- (2, 2), Arrows);
label("$X$", (3, 0), E);
label("$X'$", (-3, 0), W);
label("$Y$", (0, 3), N);
label("$Y$", (0, -3), S);
label("$A$", (2, 1.7), E);
label("$B$", (2, -1.7), E);
label("$O$", origin, SW);
label("$a$", (0.75, 0), S);
label("$L$", (2, 0), SE);
