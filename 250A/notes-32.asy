if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-32";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1.3cm);
// centering abuse
draw((-4,0)--(4,0), white);
int n = 10;
path p;
for(int i = 0; i < n; ++i)
{
p = p -- dir(360.0/n * i);
dot(dir(360.0/n * i));
}
draw((0,1.3) -- (0,-1.3), red+dashed);
draw(arc((0,0), 1.2, (360/n)*(int)(n/4), (360/n)*(int)(n/4+n/2)), arrow=EndArrow, p=blue);
draw((0,0) -- 1.3 * dir( (360/n)*(int)(n/4) ), blue);
draw((0,0) -- 1.3 * dir( (360/n)*(int)(n/4+n/2) ), blue);
draw(1.3 * dir((360/n)*(int)(n/2-1)) -- -1.3 * dir((360/n)*(int)(n/2-1)), orange+dashed);
draw(p -- cycle);
for(int i = 0; i < n; ++i)
{
dot(dir(360.0/n * i));
}
