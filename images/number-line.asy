settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;


size(16cm);

point o = (0, 0);
point e = (-5, 0);
point e1 = (5 , 0);

draw(e -- e1, Arrows);
draw(o -- o + (0, 0.2));
draw((1, 0) -- (1, 0) + (0, 0.2));
draw((-1, 0) -- (-1, 0) + (0, 0.2));
draw((sqrt(2), 0) -- (sqrt(2), 0) + (0, 0.2));
draw((-sqrt(2), 0) -- (-sqrt(2), 0) + (0, 0.2));
draw((sqrt(3), 0) -- (sqrt(3), 0) + (0, 0.2));
draw((-sqrt(3), 0) -- (-sqrt(3), 0) + (0, 0.2));
draw((2, 0) -- (2, 0) + (0, 0.2));
draw((-2, 0) -- (-2, 0) + (0, 0.2));
draw((sqrt(6), 0) -- (sqrt(6), 0) + (0, 0.2));
draw((-sqrt(6), 0) -- (-sqrt(6), 0) + (0, 0.2));
draw((3, 0) -- (3, 0) + (0, 0.2));
draw((-3, 0) -- (-3, 0) + (0, 0.2));

label("$O$", o, align=S);
label("$0$", o + (0, 0.2), align=N);
label("$A$", (1, 0), align=S);
label("$1$", (1, 0) + (0, 0.2), align=N);
label("$A'$", (-1, 0), align=S);
label("$-1$", (-1, 0) + (0, 0.2), align=N);
label("$\sqrt{2}$", (sqrt(2), 0) + (0, 0.2), align=N);
label("$-\sqrt{2}$", (-sqrt(2), 0) + (0, 0.2), align=N);
label("$\sqrt{3}$", (sqrt(3), 0) + (0, 0.2), align=N);
label("$-\sqrt{3}$", (-sqrt(3), 0), align=S);
label("$2$", (2, 0) + (0, 0.2), align=N);
label("$-2$", (-2, 0) + (0, 0.2), align=N);
label("$-\sqrt{6}$", (-sqrt(6), 0) + (0, 0.2), align=N);
label("$3$", (3, 0) + (0, 0.2), align=N);
label("$-3$", (-3, 0) + (0, 0.2), align=N);
label("$-\infty$", e, align=W);
label("$\infty$", e1, align=E);
