settings.tex="lualatex";
settings.outformat="pdf";
defaultpen(fontsize(9pt));

import graph;
import geometry;

size(8cm);

real s = 1.8;

// Scale helper
pair P(real x, real y) { return s*(x,y); }

real Cx = 2;
real Cy = 3;
real r  = 2;
real OC = sqrt(13);

// Tangency point
real cosphi = 12.0/13.0;
real sinphi =  5.0/13.0;

real P1x = 3*cosphi;
real P1y = 3*sinphi;

// Maximum-distance point
real P2x = Cx + r*Cx/OC;
real P2y = Cy + r*Cy/OC;

// Colors
pen axispen = gray + dashed + 0.4bp;
pen circlepen = rgb("185FA5")+1bp;
pen tangentpen = rgb("0F6E56")+1.2bp;
pen maxpen = rgb("993C1D")+1.2bp;
pen dashpen = gray+dashed+0.7bp;

//------------------------------------------------------
// Axes
//------------------------------------------------------

draw(P(-0.5,0)--P(5.5,0), Arrow);
draw(P(0,-0.5)--P(0,6.2), Arrow);

label("$x$",P(5.75,0),E);
label("$y$",P(0.18,6.35),N);

for(int i=1;i<=5;++i)
{
    draw(P(i,-0.1)--P(i,0.1),gray+0.4bp);
    draw(P(-0.1,i)--P(0.1,i),gray+0.4bp);

    label(string(i),P(i,-0.35),S,fontsize(8));
    label(string(i),P(-0.35,i),W,fontsize(8));
}

label("$O$",P(-0.28,-0.28));

//------------------------------------------------------
// Circle
//------------------------------------------------------

filldraw(circle(P(Cx,Cy),r*s),
         rgb("185FA5")+opacity(0.05),
         circlepen);

//------------------------------------------------------
// Tangent
//------------------------------------------------------

draw(P(0,0)--P(P1x*1.18,P1y*1.18),tangentpen);

// Radius to tangent point
draw(P(Cx,Cy)--P(P1x,P1y),rgb("0F6E56")+dashed+0.7bp);

//------------------------------------------------------
// Right-angle marker
//------------------------------------------------------

real d=0.17;

pair ut=(cosphi,sinphi);
pair un=(-sinphi,cosphi);

pair A=P(P1x,P1y);

draw(
A-s*d*ut--
A-s*d*ut+s*d*un--
A+s*d*un,
rgb("0F6E56")+0.7bp);

//------------------------------------------------------
// Maximum OP
//------------------------------------------------------

draw(P(0,0)--P(P2x,P2y),maxpen);

// OC
draw(P(0,0)--P(Cx,Cy),dashpen);

//------------------------------------------------------
// Construction lines
//------------------------------------------------------

draw(P(Cx,Cy)--P(Cx,0),rgb("0F6E56")+0.7bp);
draw(P(P1x,P1y)--P(Cx,P1y),rgb("0F6E56")+0.7bp);
draw(P(P1x,P1y)--P(P1x,0),rgb("0F6E56")+0.7bp);

//------------------------------------------------------
// Points
//------------------------------------------------------

dot(P(0,0));

filldraw(circle(P(Cx,Cy),0.10),
         rgb("185FA5"),
         rgb("185FA5"));

filldraw(circle(P(P1x,P1y),0.13),
         rgb("0F6E56"),
         white+1bp);

filldraw(circle(P(P2x,P2y),0.13),
         rgb("993C1D"),
         white+1bp);

//------------------------------------------------------
// Labels
//------------------------------------------------------

label("$H$",P(Cx-0.2,P1y),rgb("185FA5"));
label("$L$",P(Cx,-0.2),rgb("185FA5"));
label("$M$",P(P1x,-0.2),rgb("185FA5"));

label("$C(2,3)$",
      P(Cx+0.3,Cy+0.22),
      rgb("185FA5"));

label("$P\left(\frac{36}{13},\frac{15}{13}\right)$",
      P(P1x+0.55,P1y-0.18),
      rgb("0F6E56"));

label("$P_2$",
      P(P2x+0.15,P2y+0.32),
      rgb("993C1D"));

label("max $OP$",
      P(P2x+0.15,P2y+0.02),
      rgb("993C1D"));

label("$\phi$",
      P(0.82,0.2),
      rgb("D85A30"));

label("$OC=\sqrt{13}$",
      P(0.7,1.6),
      gray);

label("$OP_1=3$",
      P(P1x*0.38-0.32,P1y*0.38+0.28),
      rgb("0F6E56"));

label("$OP_2=\sqrt{13}+2$",
      P(P2x*0.38+0.45,P2y*0.38+0.12),
      rgb("993C1D"));
