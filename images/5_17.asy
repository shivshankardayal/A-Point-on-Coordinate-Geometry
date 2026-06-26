settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));
import geometry;
size(300);


// -- Two circles (intersecting), non-concentric ---------------------------
real r1 = 2.0;
real r2 = 1.54;
real d  = 3.23;

pair C1 = (0,0);
pair C2 = (d,0);

// -- Radical axis: x measured from C1 along the line of centres ----------
//   x_rad = (r1^2 - r2^2 + d^2) / (2d)
real xr = (r1^2 - r2^2 + d^2)/(2*d);

// -- A point T on the radical axis, chosen outside both circles -----------
pair T = (xr, 3.0);

// -- Tangent length + foot of tangency from T to a circle (C, r) ---------
// Right triangle T-F-C (right angle at F): hypotenuse |TC|, leg CF = r,
// leg TF = L = sqrt(|TC|^2 - r^2). The foot F is u=unit(C-T) rotated by
// theta = asin(r/|TC|), scaled by L. `side` picks which of the two
// tangent lines (left/right) you get.
pair tangentFoot(pair Tpt, pair C, real r, bool side){
  real dist  = length(C-Tpt);
  real L     = sqrt(dist^2 - r^2);
  real theta = asin(r/dist)*180/pi;     // degrees
  pair u     = unit(C-Tpt);
  return Tpt + L*(rotate(side ? theta : -theta)*u);
}

// side=false/true chosen so each foot lands on the OUTER side of its
// circle (away from the other circle) -- this is what keeps the two
// tangent lines visually well separated instead of bunching together
// near the circles' intersection points.
pair F1 = tangentFoot(T, C1, r1, false);
pair F2 = tangentFoot(T, C2, r2, true);

// -- Circles ----------------------------------------------------------------
draw(circle(C1,r1), blue+linewidth(1));
draw(circle(C2,r2), deepred+linewidth(1));
dot(C1, blue);
dot(C2, deepred);
label("$C_1$", C1, dir(200), blue);
label("$C_2$", C2, dir(-20), deepred);
label("Circle 1", C1+(r1+0.4)*dir(160), blue);
label("Circle 2", C2+(r2+0.4)*dir(20),  deepred);

// -- Line of centres -----------------------------------------------------
draw((C1.x-1.0,0)--(C2.x+1.0,0), gray+linewidth(0.5)+dashed);
label("line of centres", (C1.x-1.0,0), dir(180), gray);

// -- Radical axis -----------------------------------------------------------
draw((xr,-3.4)--(xr,3.6), heavygreen+linewidth(1.3));
label("Radical axis", (xr,3.9), heavygreen);

// -- Tangent lines from T --------------------------------------------------
draw(T--F1, blue+linewidth(0.9)+dashed);
draw(T--F2, deepred+linewidth(0.9)+dashed);

// -- Right-angle marks at the tangency points -------------------------------
real sq = 0.13;
pair rad1 = unit(F1-C1);   pair tan1 = unit(T-F1);
pair a1 = F1+sq*rad1;  pair a2=a1+sq*tan1;  pair a3=F1+sq*tan1;
draw(a1--a2--a3, gray+linewidth(0.6));

pair rad2 = unit(F2-C2);   pair tan2 = unit(T-F2);
pair b1 = F2+sq*rad2;  pair b2=b1+sq*tan2;  pair b3=F2+sq*tan2;
draw(b1--b2--b3, gray+linewidth(0.6));

// -- Equal-tangent-length tick marks (double ticks at midpoints) -------------
void ticks(pair A, pair B, pen p){
  pair mid  = (A+B)/2;
  pair ddir = unit(B-A);
  pair pdir = rotate(90)*ddir;
  real tk = 0.09;
  real gp = 0.07;
  draw(mid-gp*ddir-tk*pdir -- mid-gp*ddir+tk*pdir, p+linewidth(0.8));
  draw(mid+gp*ddir-tk*pdir -- mid+gp*ddir+tk*pdir, p+linewidth(0.8));
}
ticks(T,F1,black);
ticks(T,F2,black);

// -- Points T, F1, F2 -----------------------------------------------------
dot(T,  olive);
dot(F1, blue);
dot(F2, deepred);
label("$T$",  T,  dir(90), olive);
label("$F_1$",F1, dir(F1-C1), blue);
label("$F_2$",F2, dir(F2-C2), deepred);
