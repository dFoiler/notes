if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-42";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.6cm);
pair v1 = dir(0);
pair v2 = 2.236 * dir(90);
for(int i = -3; i <= 3; ++i)
{
for(int j = -1; j <= 1; ++j)
{
dot(i*v1+j*v2);
draw(circle(i*v1+j*v2,1), dotted);
}
}
draw((-3.5,0)--(3.5,0));
draw((0,-1*2.236-1.5)--(0,1*2.236+1.5));
