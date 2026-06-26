settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;

//size(6cm);

size(350);

// -- Define the two circles ------------------------------------------------
pair C1 = (0,0);
pair C2 = (2.6,0);
real r1 = 2;
real r2 = 2;

// -- Helper: rotate a vector 90° (perpendicular) -------------------------
pair perp(pair v) { return (-v.y, v.x); }

// -- Analytic intersection of the two circles ----------------------------
// Standard formula: with d = |C1C2|,
//   a = (r1^2 - r2^2 + d^2) / (2d)   (distance from C1 to the foot on C1C2)
//   h = sqrt(r1^2 - a^2)             (half-chord length)
real d = length(C2-C1);
real a = (r1^2 - r2^2 + d^2)/(2*d);
real h = sqrt(r1^2 - a^2);
pair M   = C1 + a*(C2-C1)/d;
pair off = h*unit(perp(C2-C1));
pair P1  = M + off;
pair P2  = M - off;
pair P   = (P1.y > P2.y) ? P1 : P2;   // upper intersection point -- annotated
pair Pp  = (P1.y > P2.y) ? P2 : P1;   // lower intersection point -- faint

// -- Draw the circles -----------------------------------------------------
draw(circle(C1, r1), blue+linewidth(1));
draw(circle(C2, r2), deepred+linewidth(1));

// -- Centres ----------------------------------------------------------------
dot(C1, blue);
dot(C2, deepred);
label("$C_1$", C1, dir(200), blue);
label("$C_2$", C2, dir(-20), deepred);

// -- Dashed radii from each centre to P -----------------------------------
draw(C1--P, blue+dashed);
draw(C2--P, deepred+dashed);

// -- Normals at P: along the radius lines C1P and C2P --------------------
pair n1dir = unit(P-C1);
pair n2dir = unit(P-C2);
real nlen = 1.7;

pair N1a = P - nlen*n1dir;
pair N1b = P + nlen*n1dir;
pair N2a = P - nlen*n2dir;
pair N2b = P + nlen*n2dir;

draw(N1a--N1b, blue+linewidth(1.1),    Arrows(SimpleHead,4));
draw(N2a--N2b, deepred+linewidth(1.1), Arrows(SimpleHead,4));

// -- Tangents at P: perpendicular to the respective radius ----------------
pair t1dir = unit(perp(n1dir));
pair t2dir = unit(perp(n2dir));
real tlen = 2.1;

pair T1a = P - tlen*t1dir;
pair T1b = P + tlen*t1dir;
pair T2a = P - tlen*t2dir;
pair T2b = P + tlen*t2dir;

draw(T1a--T1b, heavygreen+linewidth(1.1), Arrows(SimpleHead,4));
draw(T2a--T2b, olive+linewidth(1.1),      Arrows(SimpleHead,4));

// -- Angle theta between the two tangents at P --------------------------------
real angA = degrees(t1dir);
real angB = degrees(t2dir);
draw(arc(P, 0.6, angB, angA), heavygreen+linewidth(0.9));
label("$\theta$", P+0.85*unit(dir(angA)+dir(angB)), heavygreen);

// -- Right-angle marks: normal \perp tangent at P (for each circle) ----------
real sq = 0.16;
pair s1 = P + sq*n1dir;  pair s2 = s1 + sq*t1dir;  pair s3 = P + sq*t1dir;
draw(s1--s2--s3, gray+linewidth(0.6));

pair u1 = P + sq*n2dir;  pair u2 = u1 + sq*t2dir;  pair u3 = P + sq*t2dir;
draw(u1--u2--u3, gray+linewidth(0.6));

// -- Intersection points ---------------------------------------------------
dot(P, heavygreen);
label("$P$", P, dir(105), heavygreen);
dot(Pp, gray);
label("$P'$", Pp, dir(-95), gray);

// -- One label per ray, placed at its outward tip -------------------------
label("$n_1$", N1b, dir(N1b-P), blue);
label("$n_2$", N2b, dir(N2b-P), deepred);
label("$t_1$", T1b, dir(T1b-P), heavygreen);
label("$t_2$", T2a, dir(T2a-P), olive);

// -- Circle name labels (placed outside, away from the cluster at P) -----
label("Circle 1", C1+2.4*dir(165), blue);
label("Circle 2", C2+2.4*dir(15),  deepred);
