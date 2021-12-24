PFont t;
//class Cloud{
//  float cloudx;
//  float cloudy;
//  float cloudw1;
//  float cloudw2;
//  float cloudw3;
//  float cloudw4;
//  float cloudw5;
//  Cloud(){
//    cloudx =(float)Math.random()* 300;
//    cloudy = (float)Math.random()*130;
//    cloudw1 = (float)Math.random()*40+10;
//    cloudw2 = (float)Math.random()*40+10;
//    cloudw3 = (float)Math.random()*40+10;
//    cloudw4 = (float)Math.random()*40+10;
//    cloudw5 = (float)Math.random()*40+10;
//  }
//  void show(){
//    fill(250, 250, 250);
//    noStroke();
//    strokeWeight(0);
//    rect(cloudx, cloudy, cloudw1, 10);
//    rect(cloudx+10, cloudy+10, cloudw2, 10);
//    rect(cloudx+10, cloudy-10, cloudw3, 10);
//    rect(cloudx+20, cloudy-20, cloudw4, 10);
    
//  }
  
  

class Bird{
  int x;
  int y;
  double v;
  double g;
  
  Bird(){
    x=50;
    y=30;
    v = 1;
    g = 0.5;
  }
  void show(){
    fill(256, 256, 0);
    rect(x-2, y, 6, 2);
    rect(x-4, y+2, 6, 2);
    rect(x-2, y-2, 4, 2);
    rect(x-4, y-4, 4, 2);
    rect(x-6, y-6, 6, 2);
    rect(x-8, y-8, 8, 2);
    rect(x-6, y-10, 6, 2);
    fill(0);
    rect(x+4, y, 12, 2);
    rect(x+2, y+2, 2, 2);
    rect(x+16, y+2, 2, 2);
    rect(x, y+4, 2, 2);
    rect(x+4, y+4, 12, 2);
    rect(x+2, y+6, 2, 2);
    rect(x+12, y+6, 2, 2);
    rect(x+4, y+8, 10, 2);
    fill(256, 100, 0);
    rect(x+4, y+2, 12, 2);
    rect(x+2, y+4, 2, 2);
    rect(x+4, y+6, 10, 2);
    fill(200, 200, 0);
    rect(x-6, y+4, 6, 2);
    rect(x-10, y+6, 12, 2);
    rect(x-6, y+8, 10, 2);
    fill(0);
    rect(x-6, y+10, 10, 2);
    rect(x-10, y+8, 4, 2);
    rect(x-12, y+6, 2, 2);
    rect(x-12, y+4, 6, 2);
    rect(x-14, y+2, 2, 2);
    rect(x-16, y-4, 2, 6);
    rect(x-6, y-4, 2, 2);
    rect(x-4, y-2, 2, 4);
    rect(x-6, y+2, 2, 2);
    rect(x-14, y-6, 8, 2);
    fill(256, 256, 0);
    rect(x-14, y, 2, 2);
    rect(x-6, y, 2, 2);
    rect(x-12, y+2, 6, 2);
    fill(255);
    rect(x-12, y, 6, 2);
    rect(x-14, y-2, 10, 2);
    rect(x-14, y-4, 8, 2);
    fill(0);
    rect(x-10, y-8, 2, 2);
    rect(x-8, y-10, 4, 2);
    rect(x-6, y-12, 14, 2);
    rect(x+8, y-10, 2, 2);
    rect(x+10, y-8, 2, 2);
    rect(x+12, y-6, 2, 6);
    rect(x+2, y-10, 2, 2);
    rect(x, y-8, 2, 6);
    rect(x+2, y-2, 2, 2);
    fill(255);
    rect(x+4, y-10, 4, 2);
    rect(x+2, y-8, 8, 2);
    rect(x+2, y-6, 6, 2);
    rect(x+2, y-4, 6, 2);
    rect(x+4, y-2, 8, 2);
    fill(0);
    rect(x+8, y-6, 2, 4);
    
    
  }
  void update(){
if(y<384){
    v+=g;
    y+=v;
  }
  else{
    fall();
  }
  }
  void jump(){
    v=-7;
    v+=g;
    y+=v;
  }
float gety(){
    return y;
  }
void fall(){
  if(y<=450){
    v+=g;
    y+=v;
  }
  }
}







class Pipe{
float x;
float y;
float l;
int counter;
int c1;
int c2;
int Y_AXIS;
int X_AXIS;
double pipev;



Pipe(){
x = 400;
y = 0;
l = (int)(Math.random()*200)+100;
counter = 0;
c1 = color(0, 255, 0);
c2 = color(0, 102, 0);
Y_AXIS = 2;
X_AXIS = 1;
pipev = 3;
}





void make(){
  strokeWeight(2);
  fill(0);
  noStroke();
  rect(x-2, y, 30, l+2);
  setGradient((int)x, (int)y, 25, l, c2, c1, X_AXIS);
  fill(0);
  noStroke();
  rect(x-2, l+98, 30, 400-l);
  setGradient((int)x, (int)l+100, 25, 400-l, c2, c1, X_AXIS);
  fill(0);
  noStroke();
  rect(x-6, y+(l-20), 39, 25);
  setGradient((int)x-4, (int)l-18, 34, 20, c2, c1, X_AXIS);
  fill(0);
  noStroke();
  rect(x-6, l+98, 39, 25);
  setGradient((int)x-4, (int)l+100, 34, 20, c2, c1, X_AXIS);
  if(x<-19){
    counter++;
    x=320;
    l = (int)(Math.random()*200)+20;
    rect(x, y, 25, l);
  }
}




void move(){
  x-=pipev;
}

double getpipev(){
  return pipev;
}

void increasepipev(){
  pipev+=0.2;
}


float getlpipe(){
  return l;
}




float getxpipe(){
  return x;
}




void halt(){
  l=600;
}




int getcount(){
  return counter;
}
}



Pipe p;
Bird b;
//Cloud c;





void setup(){
size(300, 400);
b = new Bird();
p = new Pipe();
t = createFont("Verdana Bold",20,false);
//c = new Cloud();
}








void draw(){
background(0, 200, 256);
noStroke();
if(b.gety() >= p.getlpipe()+14 && b.gety() <= p.getlpipe()+86 || p.getxpipe() >66 || p.getxpipe() <0){
//c.show();
p.move();
b.show();
b.update();
p.make();
textFont(t,36);
fill(150, 0, 0);
strokeWeight(5);
stroke(150, 150, 0);
text(str(p.getcount()),140,100);
}
else{
  b.show();
  b.fall();
  p.halt();
  textFont(t, 36);
  fill(150, 0, 0);
  stroke(150, 150, 0);
  text("GAME OVER", 30, 100);
}

 //if(p.getcount()%10==0){
 //   p.increasepipev();
 // }
}


void keyPressed(){
if(b.gety() >= p.getlpipe()+10 && b.gety() <= p.getlpipe()+90 || p.getxpipe() >66 || p.getxpipe() <0){
b.jump();
}
else{
  b.fall();
  p.halt();
}
}





void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

noFill();

if (axis == 1) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
