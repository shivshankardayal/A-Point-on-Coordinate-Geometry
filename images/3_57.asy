settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(6cm);
defaultpen(linewidth(.5bp));

pair O = (0,0);
pair P = (3,0);
pair Q = (-3,0);
pair R = (1,3);
pair M = (1,0);

// axes (arrows on both ends of x-axis, one end of y-axis)
draw((-4,0)--(4,0), Arrows);
draw((0,0)--(0,4), Arrow);

// triangle and altitude
draw(Q--R--P);
draw(R--M);

// point labels
label("$P(a,0)$", P, S);
label("$Q(-a,0)$", Q, S);
label("$O$", O, S);
label("$M$", M, S);
label("$R$", R, N);
label("$x$", (4,0), E);
label("$y$", (0,4), N);

markangle("$\theta$", radius=10, R, P, M);
markangle("$\phi$", radius=10, M, Q, R);
