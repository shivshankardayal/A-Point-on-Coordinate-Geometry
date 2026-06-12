settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(5cm);
draw((-1, 0) -- ((1 + 4*sqrt(3))/sqrt(3) + 1, 0), Arrow);
draw((0, -5*sqrt(3)) -- (0, 2), Arrow);
label("$O$", origin, SW);
label("$X$", ((1 + 4*sqrt(3))/sqrt(3) + 1, 0), E);
label("$Y$", (0, 2), N);
label("$Y'$", (0, -5*sqrt(3)), S);

draw((-1, -5*sqrt(3)) -- ((1 + 4*sqrt(3))/sqrt(3), 1), Arrows);

markangle("$30^\circ$", radius=10, ((1 + 4*sqrt(3))/sqrt(3), 0), (0, -4*sqrt(3)), origin);
