settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;

size(4cm);

point A = (0, 0);
point B = (4, 1);
point C = (1.7, 3);
show(triangle(A, B, C), LA="", LB="", LC="", La="", Lb="", Lc="");
draw(A -- (B + C)/2);
draw(B -- (A + C)/2);
draw(C -- (A + B)/2);

label("$A(x_1, y_1)$", A, SW);
label("$B(x_2, y_2)$", B, E);
label("$C(x_3, y_3)$", C, N);
