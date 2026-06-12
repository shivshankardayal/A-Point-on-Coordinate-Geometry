settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(6cm, 8cm);

draw((-3, sqrt(3)) -- (3, -sqrt(3)), Arrows);
draw((-3, -sqrt(3)) -- (3, sqrt(3)), Arrows);
draw((-3, 0)-- (3, 0), dashed, Arrows);

label("$A$", (-3, -sqrt(3)), SW);
label("$B$", (3, sqrt(3)), NE);
label("$C$", (-3, sqrt(3)), NW);
label("$D$", (3, -sqrt(3)), SE);
path p1 = (-3, -sqrt(3)) -- (3, sqrt(3));
real ang = degrees(angle((-3, -sqrt(3)) - (3, sqrt(3)))) + 180;

label(rotate(ang)*"$a_1x + b_1y + c_1 = 0$", midpoint(p1) + (3/2, sqrt(3)/2) + (0, .3));
path p2 = (-3, sqrt(3)) -- (3, -sqrt(3));
real ang = degrees(angle((-3, sqrt(3)) - (3, -sqrt(3)))) + 180;

label(rotate(ang)*"$a_2x + b_2y + c_2 = 0$", midpoint(p2) + (-3/2, sqrt(3)/2) + (0, .3));

dot((2, 0));
label("$P(x_1, y_1)$", (2, 0), N);
dot((1.5, -0.4));
label("$Q(\alpha, \beta)$", (1.5, -0.4), E);

point z = (0, -5);
draw((-3, sqrt(3)) + z -- (3, -sqrt(3)) + z, Arrows);
draw((-3, -sqrt(3)) + z -- (3, sqrt(3)) + z, Arrows);
draw((-3, 0) + z-- (3, 0) + z, dashed, Arrows);

label("$A$", (-3, -sqrt(3)) + z, SW);
label("$B$", (3, sqrt(3)) + z, NE);
label("$C$", (-3, sqrt(3)) + z, NW);
label("$D$", (3, -sqrt(3)) + z, SE);
path p1 = (-3, -sqrt(3)) + z -- (3, sqrt(3)) + z;
real ang = degrees(angle((-3, -sqrt(3)) - (3, sqrt(3)))) + 180;

label(rotate(ang)*"$a_1x + b_1y + c_1 = 0$", midpoint(p1) + (3/2, sqrt(3)/2) + (0, .3));
path p2 = (-3, sqrt(3)) + z -- (3, -sqrt(3)) + z;
real ang = degrees(angle((-3, sqrt(3)) - (3, -sqrt(3)))) + 180;

label(rotate(ang)*"$a_2x + b_2y + c_2 = 0$", midpoint(p2) + (-3/2, sqrt(3)/2) + (0, .3));

dot((2, 0) + z);
label("$P(x_1, y_1)$", (2, 0) + z, S);
dot((1.5, 0.4) + z);
label("$Q(\alpha, \beta)$", (1.5, 0.4) + z, E);
