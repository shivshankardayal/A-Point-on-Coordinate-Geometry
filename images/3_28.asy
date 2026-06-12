settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(5cm);

point O = origin;
point A = (-1, 14 + sqrt(3));
point B = (5*sqrt(3), -1);
point C = (-5*sqrt(3), 1);
point D = (1, -14 - sqrt(3));

draw((-16, 0) -- (16, 0), Arrows);
draw((0, -16) -- (0, 16), Arrows);
draw(A -- B);
draw(C -- D);

label("$X$", (16, 0), E);
label("$X'$", (-16, 0), W);
label("$Y$", (0, 16), N);
label("$Y'$", (0, -16), S);
label("$A$", A, NW);
label("$B$", B, SE);
label("$C$", C, NW);
label("$D$", D, SE);
