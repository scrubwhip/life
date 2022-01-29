int x;
int y;
int r;
int o;
int colorr;
int colorg;
int colorb;
int colorr2;
int colorb2;
int colorg2;

void setup(){
  size(600, 600);
  x = 0;
  y = 0;
  o = 0;
  colorr2 = 255;
  colorg2 = 200;
  colorb2 = 200;
  colorr = 255;
  colorg = 200;
  colorb = 200;
  background(colorr, colorg, colorb);
}
void draw(){
 fill(colorr, colorg, colorb, o);
  rect(0, 0, 600, 600);
  noFill();
  stroke(colorr2, colorg2, colorb2);
  strokeWeight(3);
  ellipse(x, y, r, r);
  r+=2;
  o+=1;
}
void mousePressed(){
x = mouseX;
y = mouseY;
r = 0;
o=0;
if(colorr2==255){
colorr2= 255;
  colorg2 = 100;
  colorb2 = 100;
}
}
void keyPressed(){
if (colorr == 255){
  colorr = 200;
  colorg = 200;
  colorb= 255;
  colorr2= 100;
  colorg2 = 100;
  colorb2 = 255;
}
else{
  colorr = 255;
  colorg = 200;
  colorb= 200;
  colorr2= 255;
  colorg2 = 100;
  colorb2 = 100;
}
}
