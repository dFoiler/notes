if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
for(int i = -3; i <= 3; ++i)
{
dot("$"+string(i)+"$", (i,0), SE);
if(i != 0)
{
dot("$"+string(i)+"i$", (0,i), SE);
draw((-3,i)--(3,i), dashed);
draw((i,-3)--(i,3), dashed);
}
}
draw((-3,0)--(3,0));
draw((0,-3)--(0,3));
dot("$2+i$", (2,1), NE);
