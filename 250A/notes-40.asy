if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-40";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.8cm);
for(int i = -2; i <= 2; ++i)
{
for(int j = -1; j <= 1; ++j)
{
dot((i,j*1.732));
draw(circle((i,j*1.732),1), dotted);
}
}
draw((-3.5,0)--(3.5,0));
draw((0,-1*1.732-1.5)--(0,1*1.732+1.5));
