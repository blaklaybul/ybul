String lines[];
int rows;
int cols;
float[][] longlat;
color mapColor;
color landColor;

void setup() {
  size(1000,600);
  smooth();
  noLoop();
  lines = loadStrings("LongLong.txt");
  rows = lines.length;
  cols = split(lines[0], ",").length;
  longlat = new float[rows][cols];
  for(int i =0; i < rows; i++){
    String[] row = split(lines[i],",");
    for(int j = 0; j < cols; j++){
      longlat[i][j] = float(row[j]);  
    }
  }
  
  background(0,10,90);
  translate(width*.5,height*.5);
  stroke(30,145,20,15);
  fill(30,145,20,15);
  for (int y = 0; y < rows; y ++) {
       ellipse((longlat[y][1])*3,(longlat[y][0])*-3,2,2);


  }
}


void draw()
{ 
  
  stroke(250,250,250);
  
  fill(51,102,255);
  rect(20,20,30,30);
  
  fill(255,51,102);
  rect(60,20,30,30);
  
  fill(245,184,0);
  rect(100,20,30,30);
  
  fill(204,255,51);
  rect(140,20,30,30);
  
  fill(0,102,0);
  rect(180,20,30,30);
  
  fill(0,0,0);
  rect(220,20,30,30);
  
  fill(0,123,123);
  rect(260,20,30,30);
  
 }
   
  

void mousePressed()
{ 
  
  
  mapColor = get(mouseX,mouseY); 
  background(mapColor);
 popMatrix();
  stroke(250,250,250);
  
  fill(51,102,255);
  rect(20,20,30,30);
  
  fill(255,51,102);
  rect(60,20,30,30);
  
  fill(245,184,0);
  rect(100,20,30,30);
  
  fill(204,255,51);
  rect(140,20,30,30);
  
  fill(0,102,0);
  rect(180,20,30,30);
  
  fill(0,0,0);
  rect(220,20,30,30);
  
  fill(0,123,123);
  rect(260,20,30,30);
  
  pushMatrix();
  translate(width*.5,height*.5);
  landColor =  mapColor ^ 0x00FFFFFF;
  stroke(landColor,15);
  fill(landColor,15);
  for (int y = 0; y < rows; y ++) {
       ellipse((longlat[y][1])*3,(longlat[y][0])*-3,2,2);
  
 
};}






