settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
size(150);

// Parameter
real a = 4;

// Points
pair O = (0,0);
pair A = (a,0);
pair B = (0,a);

// Given results
pair M = (0,a/2);
pair N = (a/4,3*a/4);

// Draw triangle OAB
draw(O--A--B--cycle, linewidth(0.8));

// Draw triangle AMN
draw(A--M--N--cycle, red+linewidth(0.8));

// Mark points
dot("$O$", O, SW);
dot("$A$", A, SE);
dot("$B$", B, NW);
dot("$M$", M, W);
dot("$N$", N, NE);

// Draw line x + y = a
draw(A--B, dashed);

// Axes
draw(origin -- (5, 0), Arrow);
draw(origin -- (0, 5), Arrow);
label("$x$", (5, 0), E);
label("$y$", (0, 5), N);
