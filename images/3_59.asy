settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(6cm);
defaultpen(linewidth(.5bp));

// axes
draw((0,0)--(4,0), Arrow);
draw((0,0)--(0,4), Arrow);

pair O = (0,0);
pair A = (2,0);
pair B = (0,3);
pair C = (2,3);

draw(A--B--C--cycle);

label("$O$", O, SW);
label("$A(a,0)$", A, S);
label("$B(0,b)$", B, W);
label("$C(h,k)$", C, NE);

label("$b$", (2, 1.5), E);
label("$a$", (1, 3), N);
