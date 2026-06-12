settings.tex="lualatex";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
settings.outformat = "pdf";
defaultpen(fontsize(9pt));
import geometry;

size(5cm);

point o = (0, 0);
point x = (4, 0);
point p = (3, 2);

draw(o -- x, Arrow);
draw(o -- p, Arrow);

label("$O$", o, align=SW);
label("$X$", x, align=E);
label("$P(r, \theta)$", p, align=NE);

markangle("$\theta$", radius=20, x, o, p);
