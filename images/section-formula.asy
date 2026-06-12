settings.tex="lualatex";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
settings.outformat = "pdf";
defaultpen(fontsize(9pt));
import geometry;

size(5cm);

point x = (5, 0);
point y = (1, 5);
point o = (0, 0);

draw(o -- x, Arrow);
draw(o -- y, Arrow);

label("$X$", x, align=E);
label("$Y$", y, align=N);
label("$O$", o, align=SW);

point m1 = (1, 0);
point p1 = (1.6, 3);

draw(m1 -- p1);

point m = (2, 0);
point p = (2.7, 3.5);

draw(m -- p);
draw(p1 -- p);


point r1 = (2.6, 3);

draw(p1 -- r1);

point m2 = (4, 0);
point p2 = (4.9, 4.5);

draw(m2 -- p2);
draw(p -- p2);


point r2 = (4.7, 3.5);

draw(p -- r2);

//point q = ()

label("$X$", x, align=E);
label("$Y$", y, align=N);
label("$P_1$", p1, align=W);
label("$P_2$", p2, align=NW);
label("$P$", p, align=N);
label("$M_1$", m1, align=S);
label("$M_2$", m2, align=S);
label("$M$", m, align=S);
label("$R_1$", r1, align=E);
label("$R_2$", r2, align=E);

markangle("$\omega$", radius=20, x, o, y);
