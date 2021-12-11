if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-31";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1.3cm);
// centering abuse
draw((-4,0)--(4,0), white);
int n = 9;
path p;
for(int i = 0; i < n; ++i)
{
p = p -- dir(360.0/n * i + 90);
dot(dir(360.0/n * i + 90));
}
draw((0,1.3) -- (0,-1.3), red+dashed);
label("\color{red}$a$", (0,-1.3), S);
draw(arc((0,0), 1.2, 90-2*(360/n), 90-(360/n)), arrow=EndArrow, p=blue);
draw((0,0) -- 1.3 * dir( 90-2*(360/n) ), blue);
draw((0,0) -- 1.3 * dir( 90-(360/n) ), blue);
label("\color{blue}$b$", 1.3 * dir( 90-2*(360/n) ), E);
draw(1.3 * dir(90 + 360/n) -- -1.3*dir(90+360/n), dashed+purple);
label("{\color{blue}$b$}{\color{red}$a$}{\color{blue}$b^{-1}$}", -1.3*dir(90+360/n), E);
draw(p -- cycle);
for(int i = 0; i < n; ++i)
{
dot(dir(360.0/n * i + 90));
}
