if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-37";
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
p = p -- 2 * dir(90 + 120*i);
dot(2 * dir(90 + 120*i));
dot(dir(30 + 120*i));
draw(dir(30 + 120*i) -- 2*dir(210+120*i));
}
draw(p -- cycle);
draw(circle((0,0),1));
dot((0,0));
