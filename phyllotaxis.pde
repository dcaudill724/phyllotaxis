float theta = 0;
float n = 0;
ArrayList<PVector> points = new ArrayList<PVector>();

void setup(){
  size(600, 600); 
  background(0);
}


void draw(){
  background(0);
  translate(width / 2, height /2);
  rotate(n * radians(137.5));
  noStroke();
  theta = n * radians(137.5);
  float r = 5 * sqrt(n);
  fill(0, 200, r * 2);
  float x = r * sin(theta);
  float y = r * cos(theta);
  points.add(new PVector(x, y));
  n++;
  for(PVector p : points){
    ellipse(p.x, p.y, 10, 10); 
  }
}

void keyPressed(){
  if(key == ' '){
    save("phyllotaxis.png"); 
  }
}