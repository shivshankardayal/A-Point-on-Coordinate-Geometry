settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(6cm);
defaultpen(linewidth(.5bp));

// axes
draw((-4,0)--(5,0), black+0.5pt, Arrows);
draw((0,0)--(0,6), black+0.5pt, Arrow);

// points
pair A = (4,0);
pair B = (-3,0);
pair P = (4,3);
pair Q = (-3,4);
pair O = (0,0);
pair R = (0.5,3.5);

// segments
draw(B--Q, black+0.5pt);
draw(Q--P, black+0.5pt);
draw(A--P, black+0.5pt);
draw(O--P, black+0.5pt);
draw(O--Q, black+0.5pt);
draw(O--R, black+0.5pt);

// angle marks
markangle("$\theta$", radius=0.5cm, A, O, P);
markangle("$op^\circ - \theta$", radius=0.5cm, Q, O, B);
markrightangle(O, R, P);
markrightangle(P, O, Q);

// labels
label("$A$", A, S);
label("$B$", B, S);
label("$O$", O, S);
label("$P$", P, N);
label("$Q$", Q, N);
label("$R$", R, N);
