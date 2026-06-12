settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;

size(5cm);

point xmin = (-4, 0);
point xmax = (4, 0);
point ymin = (0, -4);
point ymax = (0, 4);

draw(xmin -- xmax, Arrows);
draw(ymin -- ymax, Arrows);
label("$x$", xmax, E);
label("$y$", ymax, N);

draw((-3, -3) -- (3, 3));
draw((-3, -3) -- (-3, 0), dashed);
draw((-2, -2) -- (-2, 0), dashed);
draw((-1, -1) -- (-1, 0), dashed);
draw((3, 3) -- (3, 0), dashed);
draw((2, 2) -- (2, 0), dashed);
draw((1, 1) -- (1, 0), dashed);
label("$P1$", (1, 1), N);
label("$P2$", (2, 2), N);
label("$P3$", (3, 3), N);
label("$P4$", (-1, -1), S);
label("$P5$", (-2, -2), S);
label("$P6$", (-3, -3), S);
