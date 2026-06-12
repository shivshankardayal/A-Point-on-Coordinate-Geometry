settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;

size(6cm);

point o = (0, 0);
point x = (4, 0);
point y = (0, 3);

draw(o -- x, Arrow);
draw(o -- y, Arrow);

label("$O$", o, align=SW);
label("$X$", x, align=E);
label("$Y$", y, align=W);

point a = (1, 1.2);
point b = (3.3, 0.8);
point c = (2.8, 2);

draw(a -- b -- c -- cycle);

label("$A$", a, align=W);
label("$B$", b, align=E);
label("$C$", c, align=N);

point l = (1, 0);
point m = (3.3, 0);
point n = (2.8, 0);

draw(a -- l, dashed);
draw(b -- m, dashed);
draw(c -- n, dashed);

label("$L$", l, align=S);
label("$M$", m, align=S);
label("$N$", n, align=S);
