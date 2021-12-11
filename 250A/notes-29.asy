if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-29";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
path p;
for(int i = 0; i < 3; ++i)
{
p = p -- dir(90 + 120*i);
dot(dir(90 + 120*i));
}
draw((0,1.3) -- (0,-0.8), blue+dashed);
draw(p -- cycle);
