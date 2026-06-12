settings.tex="lualatex";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
settings.outformat = "pdf";
defaultpen(fontsize(9pt));
import geometry;

size(4cm);

point o = (0, 0);
point x = (4, 0);
point y = (0, 4);
point p = (3, 2);
point m = (3, 0);

draw(o -- x, Arrow);
draw(o -- y, Arrow);
draw(o -- p);
draw(m -- p);

label("$O$", o, align=SW);
label("$X$", x, align=E);
label("$Y$", y, align=N);
label("$P(r, \theta)$", p, align=NE);
label("$r\cos\theta$", (o + m)/2, align=S);
label(Label("$r\sin\theta$", Rotate(m-p)), m--p);
markangle("$\theta$", radius=20, x, o, p);
