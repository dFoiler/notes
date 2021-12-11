if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-38";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.8cm);
for(int i = -2; i <= 2; ++i)
{
for(int j = -2; j <= 2; ++j)
{
dot((i,j));
draw(circle((i,j),1), dotted);
}
}
draw((-3.5,0)--(3.5,0));
draw((0,-3.5)--(0,3.5));
