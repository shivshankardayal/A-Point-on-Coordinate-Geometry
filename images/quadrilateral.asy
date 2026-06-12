settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;

size(6cm);

point a = (0, 0);
point b = (4, 0);
point c = (3, 1.4);
point d = (-1, 0.8);

draw(a -- b -- c -- d -- cycle);
draw(a -- c);

label("$A$", a, align=SW);
label("$B$", b, align=SE);
label("$C$", c, align=NE);
label("$D$", d, align=NW);
