settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;
size(200);

// -- Orthogonal circles satisfy:  r1^2 + r2^2 = d^2  ---------------------
real r1 = 2.0;
real r2 = 1.69;
real d  = sqrt(r1^2 + r2^2);     // distance between centres, fixed by the
                                   // orthogonality condition itself

pair C1 = (0,0);
pair C2 = (d,0);

// -- Helper: rotate a vector 90° (perpendicular) -------------------------
pair perp(pair v) { return (-v.y, v.x); }

// -- Analytic intersection of the two circles ----------------------------
real a   = (r1^2 - r2^2 + d^2)/(2*d);
real h   = sqrt(r1^2 - a^2);
pair M   = C1 + a*(C2-C1)/d;
pair off = h*unit(perp(C2-C1));
pair P1  = M + off;
pair P2  = M - off;
pair P   = (P1.y > P2.y) ? P1 : P2;   // upper intersection -- fully annotated
pair Pp  = (P1.y > P2.y) ? P2 : P1;   // lower intersection -- lightly annotated

// unit radius directions at each intersection point
pair n1 = unit(P-C1);    pair n2 = unit(P-C2);
pair m1 = unit(Pp-C1);   pair m2 = unit(Pp-C2);

// -- Circles ----------------------------------------------------------------
draw(circle(C1,r1), blue+linewidth(1));
draw(circle(C2,r2), deepred+linewidth(1));
dot(C1, blue);
dot(C2, deepred);
label("$C_1$", C1, dir(200), blue);
label("$C_2$", C2, dir(-20), deepred);
label("Circle 1", C1+(r1+0.45)*dir(165), blue);
label("Circle 2", C2+(r2+0.45)*dir(15),  deepred);

// -- Key orthogonality property ---------------------------------------------
// Because the radii at P are perpendicular, the radius of one circle lies
// exactly along the tangent direction of the other circle at P. So we draw
// ONE continuous line per circle: centre -> P -> a little beyond, and that
// "beyond" portion is the tangent to the OTHER circle.
real ext = 1.0;
draw(C1 -- (P + ext*n1), blue    + linewidth(1.1));
draw(C2 -- (P + ext*n2), deepred + linewidth(1.1));

// Faint mirrored radii down to the lower intersection point P'
draw(C1--Pp, blue+linewidth(0.7)+dashed);
draw(C2--Pp, deepred+linewidth(0.7)+dashed);

// -- Right-angle marks at both intersection points ---------------------------
real sq = 0.16;
pair s1 = P + sq*n1;  pair s2 = s1 + sq*n2;  pair s3 = P + sq*n2;
draw(s1--s2--s3, gray+linewidth(0.7));

real sq2 = 0.12;
pair u1 = Pp + sq2*m1;  pair u2 = u1 + sq2*m2;  pair u3 = Pp + sq2*m2;
draw(u1--u2--u3, gray+linewidth(0.6));

// -- Intersection point markers -----------------------------------------------
dot(P,  heavygreen);
dot(Pp, gray);
label("$P$",  P,  dir(105), heavygreen);
label("$P'$", Pp, dir(-95), gray);

// -- Annotate the tangency property directly on the extended segments -------
label("tangent to Circle 2", P+ext*n1, n1, blue);
label("tangent to Circle 1", P+ext*n2, n2, deepred);
