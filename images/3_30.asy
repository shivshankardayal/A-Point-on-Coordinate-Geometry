settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(5cm);

point A = origin;
point B = (-1, 0);
point C = (-1, -1);
point D = (0, -1);

draw(A -- B -- C -- D -- A);
draw(A -- C);
draw(B -- D);

label("$A$", A, NE);
label("$B$", B, NW);
label("$C$", C, SW);
label("$D$", D, SE);
label("$H(-1/2, 0)$", (-1/2, -1/2) + (0, -0.2), S);
