
void setup(){
size(1200, 1000);
}
float zoom = 1;
float a = 0.005;
float b = 2;
int x = 900;
int y = 500;
int func(double x, double y, double newx, double newy){
  int escape = 1;
  double abs = Math.pow(x, 2) + Math.pow(y, 2);
  while(abs<4 && escape<256){
    double temp = newx;
    newx = x+(Math.pow(newx, 2)-Math.pow(newy, 2));
    newy = y+(2*temp*newy);
    abs = Math.pow(newx, 2) + Math.pow(newy, 2);
    escape++;
  }
  return escape;
}
void draw(){
scale(zoom);
translate(x, y);
for(float i = -2; i<=2; i+=0.002){
  for(float j = -2; j<=2; j+=0.002){
    noStroke();
    if(func(i, j, i, j) <256){
     fill(func(i, j, i, j), 
     func(i, j, i, j)*Math.abs(j*i*30), 256-func(i, j, i, j));
    }
    else{
      fill(0);
    }
    rect(i*450, j*450, b, b);
  }
}
if(mousePressed){
  zoom+=1;
  //a/=1.5;
  //b/=1.5;
}
if(keyPressed){
  if(key == CODED){
    if(keyCode == LEFT){
      x+=10;
    }
    else if(keyCode == RIGHT){
      x-=10;
    }
    else if(keyCode == DOWN){
      y-=10;
    }
    else if(keyCode == UP){
      y+=10;
    }
  }
}

}
