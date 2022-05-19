int cellSize = 10;
World world;
void setup() {
  size(1600, 1600);
  world = new World(width/cellSize, height/cellSize);
  frameRate(60);
}
void draw() {
  background(0);
  world.show();
  if(keyPressed){
  world.update();
  }
}
class World {
  private Shape[][] cells;
  public World(int rows, int cols) {
    cells = new Shape[rows][cols];
    for(int i = 0; i<cells.length; i++){
      for(int j = 0; j<cells[i].length; j++){
        cells[i][j] = new Shape();
        cells[i][j].kill();
      }
    }
  }
  public void show() {
    for(int i = 0; i<cells.length; i++){
      for(int j = 0; j<cells[i].length; j++){
        if(cells[i][j]!=null){
          pushMatrix();
          translate(i*cellSize, j*cellSize);
          cells[i][j].show();
          popMatrix();
          }
      }
    }
  if(mousePressed){
  int i = mouseX/cellSize;
  int j = mouseY/cellSize;
  cells[i][j].revive();
  }
  }
  public void update(){
    for(int i = 1; i<cells.length-1; i++){
      for(int j = 1; j<cells[i].length-1; j++){
        int countalive = 0;
        if(cells[i][j]!=null){
          Shape[] s = {cells[i-1][j-1], cells[i-1][j], cells[i-1][j+1], cells[i][j-1], cells[i][j+1], cells[i+1][j-1], cells[i+1][j], cells[i+1][j+1]};
          if(cells[i][j].getType() == 1){
            for(int x = 0; x<8; x++){
              if(s[x].getType() == 1){
                countalive++;
              }
            }
            if(countalive<2 || countalive>3){
              cells[i][j].no();
            }
            else{
              cells[i][j].yes();
            }
        }
          if(cells[i][j].getType() == 0){
            for(int x = 0; x<8; x++){
              if(s[x].getType() == 1){
                countalive++;
              }
            }
            if(countalive==3){
              cells[i][j].yes();
            }
            else{
              cells[i][j].no();
            }
          }
          }
  }
}
for(int i = 1; i<cells.length-1; i++){
      for(int j = 1; j<cells[i].length-1; j++){
        if(cells[i][j].getl()){
          cells[i][j].revive();
        }
        else{
          cells[i][j].kill();
        }
      }
}
}
class Shape {
  private int type;
  private boolean live;
  public Shape() {
    type = (int)(Math.random() * 2);
  }
  public int getType(){
    return type;
  }
  public void kill(){
    type = 0;
  }
  public void no(){
    live = false;
  }
  public void yes(){
    live = true;
  }
  public boolean getl(){
    return live;
  }
  public void revive(){
    type = 1;
  }
  public void show() {
    noStroke();
    if (type == 0) {
      fill(0);
    }
    if (type == 1) {
      fill(0, 0, 255);
    }
    rect(2, 2, cellSize-4, cellSize-4);
  }
}
}
