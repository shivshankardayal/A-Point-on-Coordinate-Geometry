settings.tex="lualatex";
settings.outformat="pdf";

defaultpen(fontsize(9pt));
import geometry;
import labelpath;

size(6cm);
defaultpen(linewidth(.5bp));

pair A = (0,0);
pair B = (4,0);
pair D = (2,4);
pair C = (6,4);

// foot from D to AB
real t1 = dot(D-A, B-A) / dot(B-A, B-A);
pair L = A + t1*(B-A);

// foot from B to AD
real t2 = dot(B-A, D-A) / dot(D-A, D-A);
pair M = A + t2*(D-A);

// helper to draw a right-angle mark at vertex P, with rays toward Q1 and Q2
void rightanglemark(pair P, pair Q1, pair Q2, real r) {
    pair u1 = unit(Q1 - P);
    pair u2 = unit(Q2 - P);
    draw(P + r*u1 -- P + r*u1 + r*u2 -- P + r*u2);
}

// parallelogram
draw(A--B);
draw(B--C);
draw(C--D);
draw(D--A);

// perpendiculars
draw(D--L);
draw(B--M);

// labels
label("$A$", A, SW);
label("$B$", B, SE);
label("$C$", C, NE);
label("$D$", D, NW);
label("$L$", L, S);
label("$M$", M, W);

// right-angle marks
rightanglemark(L, B, D, 0.5);
rightanglemark(M, A, B, 0.5);
