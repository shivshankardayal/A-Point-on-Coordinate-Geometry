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
label("$A(x_1, y_1)$", A, SW);
label("$B(x_2, y_2)$", B, E);
label("$C(x_3, y_3)$", C, N);
line l = bisector(line(A, B), line(A, C));
point lb = intersectionpoint(l, line(B, C));
draw(A -- lb);
line m = bisector(line(B, C), line(B, A));
point mb = intersectionpoint(m, line(A, C));
draw(B -- mb);
line n = bisector(line(A, C), line(B, C));
point nb = intersectionpoint(n, line(A, B));
draw(C -- nb);
