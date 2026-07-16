settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(6cm);
defaultpen(linewidth(.5bp));

pair A = (1, 3);
pair B = (4, 1);
pair C = (3, 3.5);

// axes
draw((0, 0)--(5, 0), Arrow);
draw((0, 0)--(0, 4), Arrow);

// triangle
draw(A--B--C--cycle);

// labels
label("$A$", A, W);
label("$B$", B, SE);
label("$C$", C, N);

// dashed drop-lines to the x-axis
draw(A--(A.x, 0), dashed);
draw(B--(B.x, 0), dashed);
draw(C--(C.x, 0), dashed);
