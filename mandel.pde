
int cellSize = 10;
World world;


void setup() {
  size(1600, 1600);
  world = new World(width/cellSize, height/cellSize);
  frameRate(60);

}

void draw() {
  background(256);
  world.show();
  world.update();
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
    for(int i = 5; i<20; i++){
      for(int j = 10; j<20; j++){
      cells[i][j].revive();
      }
    }
   
  }
  
  public void show() {
    // TODO 2: run the following code on all the cells
    //       that are not null
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

  }
  public void update(){
    for(int i = 1; i<cells.length-1; i++){
      for(int j = 1; j<cells[i].length-1; j++){
        int countalive = 0;
        if(cells[i][j]!=null){
          Shape[] s = {cells[i-1][j-1], cells[i-1][j], cells[i-1][j+1], cells[i][j-1], cells[i][j+1], cells[i+1][j-1], cells[i+1][j], cells[i+1][j+1]};
          if(cells[i][j].getType() == 1){
            for(int x = 0; x<s.length; x++){
              if(s[x].getType() == 1){
                countalive++;
              }
            }
            if(countalive<2 || countalive>3){
              cells[i][j].kill();
            }
          }
          
          if(cells[i][j].getType() == 0){
            for(int x = 0; x<s.length; x++){
              if(s[x].getType() == 1){
                countalive++;
              }
            }
            if(countalive==3){
              cells[i][j].revive();
            }
          }
          }
  }
}
  }

class Shape {
  private int type;

  public Shape() {
    type = (int)(Math.random() * 2);
  }
  public int getType(){
    return type;
  }
  public void kill(){
    type = 0;
  }
  public void revive(){
    type = 1;
  }
  
  public void show() {
    noStroke();
    if (type == 0) {
      fill(0);
    } else if (type == 1) {
      fill(0, 0, 255);
    }
    rect(2, 2, cellSize-4, cellSize-4);
  }
}
}
