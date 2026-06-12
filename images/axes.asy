settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;

size(8cm);

point x = (5, 0);
point x1 = (-5, 0);
point y = (1, 5);
point y1 = (-1, -5);
point o = (0, 0);

draw(x -- x1, Arrows);
draw(y -- y1, Arrows);

label("$X$", x, align=E);
label("$X'$", x1, align=W);
label("$Y$", y, align=N);
label("$Y'$", y1, align=S);
label("$O$", o, align=SW);

point p1 = (1.2, 3);
draw((0.6, 0) -- p1);
label("$P_1$", p1, align=N);
label("$M_1$", (0.6,0), align=S);

point p2 = (-3, 2);
draw((-3.6, 0) -- p2);
label("$P_2$", p2, align=N);
label("$M_2$", (-3.6, 0), align=S);

point p3 = (-2.4, -2);
draw((-2, 0) -- p3);
label("$P_3$", p3, align=S);
label("$M_3$", (-2, 0), align=N);

point p4 = (3, -2.4);
draw((3.6, 0) -- p4);
label("$P_4$", p4, align=S);
label("$M_4$", (3.6, 0), align=N);
