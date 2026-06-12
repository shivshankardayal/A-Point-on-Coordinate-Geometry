settings.tex="lualatex";
settings.outformat="pdf";
texpreamble("\usepackage{fontspec}\usepackage{unicode-math}\setmainfont{Libertinus Serif}\setmathfont{Libertinus Math}");
defaultpen(fontsize(9pt));
import geometry;
import graph;

size(5cm);

// Axes
draw((-1,0)--(6,0), Arrow);
draw((0,-5)--(0,5), Arrow);

label("$x$", (6,0), E);
label("$y$", (0,5), N);

// Parametric parabola y^2 = 4x
real tmin = -4;
real tmax = 4;

pair P(real t) {
  return (t^2/4, t);
}

draw(graph(P, tmin, tmax));

// Origin
dot((0,0));
label("$O$", (0,0), SW);

point p1 = (1, 2);
point p2 = (1, - 2);
point p3 = (2, 2*sqrt(2));
point p4 = (2, -2*sqrt(2));
point p5 = (4, 4);
point p6 = (4, -4);

dot(p1);
dot(p2);
dot(p3);
dot(p4);
dot(p5);
dot(p6);
