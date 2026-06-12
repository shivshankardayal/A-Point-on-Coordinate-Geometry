settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(5cm);

point B = (0, 0);
point C = (4cm, 0);
point A = (1.8cm, 3cm);

draw(A -- B -- C -- cycle);

label("$B$", B, SW);
label("$C$", C, SE);
label("$A(2, -7)$", A, N);
label("$3x - 4y + 1 = 0$", (2cm, 0), S);
path p = B -- A;
label(rotate(degrees(dir(p, 0))) *"$4x + y - 1 = 0$", (A + B)/2 + (-0.2cm, -0cm));
