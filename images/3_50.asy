settings.tex="latex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(4cm);
defaultpen(linewidth(.5bp));

point A = (-2, 2);
point B = (2, 0);
point C = (0.5, -3);

draw(A -- B -- C --cycle);
label("$A$", A, N);
label("$B$", B, N);
label("$C$", C, S);

path p = A -- B;
labelpath(shift(3, 3) * "$x + y = 2$", p);
