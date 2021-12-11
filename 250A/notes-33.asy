if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-33";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
for(int i = -3; i <= 3; ++i)
{
dot((i,0));
label("$"+string(i)+"$", (i,0), S);
}
draw((-3.5,0) -- (3.5,0), Arrows);
