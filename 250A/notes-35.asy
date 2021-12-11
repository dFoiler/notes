if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-35";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
path p;
path q;
path r;
for(int i = 0; i < 8; ++i)
{
p = p -- dir(45*i);
if(i % 2 == 1)
q = q -- dir(45*i);
else
r = r -- dir(45*i);
}
draw(p -- cycle);
draw(q -- cycle, blue);
draw(r -- cycle, orange);
for(int i = 0; i < 8; ++i)
{
dot(dir(45*i));
}
