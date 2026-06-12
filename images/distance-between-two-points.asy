settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
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

point m2 = (2, 0);
point p2 = (2.8, 4);

draw(m2 -- p2);
draw(p1 -- p2);


point r = (2.6, 3);

draw(p1 -- r);

label("$X$", x, align=E);
label("$Y$", y, align=N);
label("$P_1$", p1, align=W);
label("$P_2$", p2, align=N);
label("$M_1$", m1, align=S);
label("$M_2$", m2, align=S);
label("$R$", r, align=E);

markangle("$\omega$", radius=20, x, o, y);
