settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

// Parabola: x = 3/5 + (15/64) y^2
real a = 3/5, b = 15/64;
pair P(real y) { return (a + b*y^2, y); }

// Build parabola path
path parab = P(-4.2);
for (real y = -4.15; y <= 4.2; y += 0.05)
    parab = parab--P(y);

// Axes
draw((-6.5,0)--(3,0), Arrow, L=Label("$x$", position=EndPoint));
draw((0,-1)--(0,8.5), Arrow, L=Label("$y$", position=EndPoint));

// Parabola
draw(parab, blue);

// The two tangent circles
draw(circle((2,1), 1), red);        // smaller circle
draw(circle((-2,4), 4), heavygreen);  // larger circle (dashed for contrast)

// Centers
dot("$(2,1)$", (2,1), N, red);
dot("$(-2,4)$", (-2,4), N, heavygreen);

// Points of tangency with x-axis
dot((2,0), red);
dot((-2,0), heavygreen);

// Common point of tangency on parabola
dot("$\left(\frac{6}{5},\frac{8}{5}\right)$", (6/5,8/5), NE, black);

// Labels
label("$75y^2=64(5x-3)$", (1.6,3.3), blue);
label("$r=1$", (2.3,0.5), red);
label("$r=4$", (-2.5,2), heavygreen);
