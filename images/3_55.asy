settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(6cm);
defaultpen(linewidth(.5bp));

import geometry;

unitsize(0.8cm);
defaultpen(fontsize(10pt));

// axes
draw((0,0)--(6,0), black+0.5pt, Arrow);
draw((0,0)--(0,6), black+0.5pt, Arrow);

// points
pair O = (0,0);
pair A = (0,4);
pair B = (5,0);
pair C = (2, 3 + 2*sqrt(3));
pair L = (2,0);

// triangle
draw(A--B, blue+0.5pt);
draw(B--C, blue+0.5pt);
draw(C--A, blue+0.5pt);
draw(C--L, dashed+0.5pt);

// locus
draw((0,3)--(2, 3 + 2*sqrt(3)), red+0.5pt);

// labels
label("$O$", O, SW);
label("$A$", A, W);
label("$B$", B, S);
label("$C$", C, N);
label("$L$", L, S);

// angle arc at (4.4,0)
pair Ctr = (4.4,0);
real r = 0.3; // 3mm
markangle("$\theta$", radius=10, A, B, origin);
//draw(arc(Ctr, r, 120, 180));
//label("$\theta$", Ctr, NW);
