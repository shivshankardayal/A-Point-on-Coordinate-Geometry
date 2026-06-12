settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;

size(6cm);

point a = (0, 0);
point b = (5, 0);
point c = (3.5, 2);
point d = (1, 2);
point l = (1, 0);
point m = (5, 2);

draw(a -- b -- c -- d -- cycle);
draw(d -- l, dashed);
draw(b -- m -- c, dashed);
draw(b -- d, dashed);

label("$A$", a, align=SW);
label("$B$", b, align=SE);
label("$C$", c, align=N);
label("$D$", d, align=N);
label("$L$", l, align=S);
label("$M$", m, align=NE);
