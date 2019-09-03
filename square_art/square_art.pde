int boxSize = 50;

void setup() {
  size(600, 600);  
  background(0);
}


void draw() {
  clear();
  
  fill(255, 0, 0);
  for (int i=0; i < 600 - 600%boxSize; i++) {
    for (int j=0; j < 600 - 600%boxSize; j++) {
      square(j*boxSize + random(-3, 3), i*boxSize + random(-3, 3), boxSize);
    }
  }
}
