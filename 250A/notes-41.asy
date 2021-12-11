if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-41";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.8cm);
pair v1 = dir(0);
pair v2 = dir(60);
for(int i = -2; i <= 2; ++i)
{
for(int j = -1; j <= 1; ++j)
{
if(!(j==-1 & i==-2) && !(j==1 && i==2))
{
dot(i*v1+j*v2);
draw(circle(i*v1+j*v2,1), dotted);
}
}
}
draw((-3.5,0)--(3.5,0));
draw((0,-1*1.732/2-1.5)--(0,1*1.732/2+1.5));
