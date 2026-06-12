settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(6cm);
unitsize(1cm);
draw((-4, 0) -- (4, 0), Arrows);
draw((0, -2) -- (0, 4), Arrows);
label("$X$", (4, 0), E);
label("$X'$", (-4, 0), W);
label("$Y$", (0, 4), N);
label("$Y'$", (0, -2), S);

draw((3, 4) -- (-2, -1), Arrows);
markangle("$\theta$", radius=5, origin, (-1, 0), (1, 2));

draw((2, 3) -- (2, 0));
draw((1, 2) -- (2, 2));
draw((1, 2) -- (1, 0));
markangle("$\theta$", radius=5, (2, 2), (1, 2), (2, 3));

label("$A$", (-1.8, -0.8), E);
label("$B$", (2.8, 3.8), E);
label("$O$", origin, SW);
label("$Q$", (1, 2), W);
label("$M$", (1, 0), S);
label("$L$", (2, 0), S);
label("$N$", (2, 2), E);
label("$P(x, y)$", (2, 3), E);
label("$H$", (-1, 0), N);
