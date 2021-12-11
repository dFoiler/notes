if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(7cm);
real R = 6;
pair[] ps = {R*dir(45), R*dir(45+90), R*dir(45+180), R*dir(45+270)};
for(int i = 0; i < 4; ++i)
{
pair v11 = 3*dir(190-20+90*i);
pair v12 = dir(180+90*i);
pair vertical = dir(90*(i+1));
// + 1
draw(ps[i] -- ps[i]+v11 -- ps[i]+v11+v12 -- ps[(i+1)%4], red);
draw(ps[i]+v11 -- ps[i]+v11+vertical, red);
draw(ps[i]+v11+v12 -- ps[i]+v11+v12+vertical, red);
for(int j = 0; j <= 3; ++j)
dot(ps[i] + v11 + j*vertical/3);
dot(ps[i]+v11+v12); dot(ps[i]+v11+v12+vertical);
// + 3
draw(ps[(i+1)%4] -- ps[(i+1)%4]-v11 -- ps[(i+1)%4]-v11-v12 -- ps[i], green);
draw(ps[(i+1)%4]-v11 -- ps[(i+1)%4]-v11-vertical, green);
draw(ps[(i+1)%4]-v11-v12 -- ps[(i+1)%4]-v11-v12-vertical, green);
for(int j = 0; j <= 5; ++j)
dot(ps[(i+1)%4]-v11-j*vertical/5);
dot(ps[(i+1)%4]-v11-v12); dot(ps[(i+1)%4]-v11-v12-vertical);
// + 2
pair v21 = 3*dir(270-45-10+90*i);
pair v22 = dir(270-45+90*i);
pair oblique = dir(270-45+90*i-90);
draw(ps[i] -- ps[i]+v21 -- ps[i]+v21+v22 -- ps[(i+2)%4], blue);
draw(ps[i]+v21 -- ps[i]+v21+oblique, blue);
draw(ps[i]+v21+v22 -- ps[i]+v21+v22+oblique, blue);
for(int j = 0; j <= 4; ++j)
dot(ps[i]+v21+j*oblique/4);
dot(ps[i]+v21+v22); dot(ps[i]+v21+v22+oblique);
// + 0
pair v01 = dir(15+90*i);
pair v02 = dir(75+90*i);
oblique = dir(45+90*i);
draw(ps[i] -- ps[i]+v01 -- ps[i]+v02 -- cycle);
draw(ps[i]+v01 -- ps[i]+v01+oblique);
draw(ps[i]+v02 -- ps[i]+v02+oblique);
for(int j = 0; j <= 2; ++j)
dot(ps[i]+v02+j*oblique/2);
dot(ps[i]+v01); dot(ps[i]+v01+oblique);
}
for(int i = 0; i < 4; ++i)
{
// draw point
fill(circle(ps[i],0.3), black);
}
