if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="notes-44";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.6cm);
pair v1 = dir(0);
pair v2 = 2.236 * dir(90);
draw((-7.8,0)--(7.8,0));
draw((0,-2*2.236-1.3)--(0,2*2.236+1.3));
for(int i = -7; i <= 7; ++i)
{
for(int j = -2; j <= 2; ++j)
{
dot(i*v1+j*v2);
if((i-j) % 2 == 0)
dot(i*v1+j*v2, 5+red);
}
}
