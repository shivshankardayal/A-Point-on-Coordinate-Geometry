settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(6cm);

defaultpen(linewidth(0.5pt));

// --- Ellipse parameters ---
real a = 4, b = 2;
path ell = ellipse((0,0), a, b);

// --- Function: intersect line y = m*x + c with the ellipse ---
pair[] chordEndpoints(real m, real c, real a, real b) {
  real A = 1/a^2 + m^2/b^2;
  real B = 2*m*c/b^2;
  real C = c^2/b^2 - 1;
  real disc = B^2 - 4*A*C;
  if (disc < 0) {
    write("No intersection for c = ", c);
  }
  real x1 = (-B + sqrt(disc))/(2*A);
  real x2 = (-B - sqrt(disc))/(2*A);
  pair P1 = (x1, m*x1 + c);
  pair P2 = (x2, m*x2 + c);
  return new pair[] {P1, P2};
}

// --- Three parallel chords: same slope m, different intercepts c ---
real m = 0.5;
real[] cvals = {-2, -0.6, 1.3};

pair[] midpoints;

draw(ell);

for (int i = 0; i < cvals.length; ++i) {
  pair[] ends = chordEndpoints(m, cvals[i], a, b);
  draw(ends[0]--ends[1], blue);
  dot(ends[0]); dot(ends[1]);
  pair mid = (ends[0] + ends[1])/2;
  midpoints.push(mid);
  dot(mid, red);
}

// --- Diameter through the center that bisects all three chords ---
// Theory: the locus of midpoints of chords of slope m is itself
// a line through the center with slope M = -b^2/(m*a^2).
real M = -b^2/(m*a^2);
pair[] diamEnds = chordEndpoints(M, 0, a, b);   // c = 0 => passes through center
draw(diamEnds[0]--diamEnds[1], red);

// --- Labels ---
label("$O$", (0,0), SW);
dot((0,0));

// axes for reference
draw((-a-2,0)--(a+2,0), gray+0.5bp, Arrow);
draw((0,-b-2)--(0,b+2), gray+0.5bp, Arrow);
label("$x$", (a + 2, 0), E);
label("$y$", (0, b + 2), N);
