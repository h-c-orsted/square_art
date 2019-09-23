int boxSize = 50;

void setup() {
  size(600, 600);  
  background(0);
}


void draw() {
  clear();
  fill(255,0,0);

  // First loop is for each row, i.e. y varies here
  for (int i=0; i < 600 - 600%boxSize; i++) {

    // Second (nested) loop is for each column, i.e. x varies here
    for (int j=0; j < 600 - 600%boxSize; j++) {
      // The gradient. 3.4 is the color, 3 2 and 1 is the amount of each color
      fill((int)3.4*3*(j+i), (int)3.4*2*(j+i), (int)3.4*(j+i));
      
      // Create the squares and make them move by getting a random number -3 to 3
      square(j*boxSize + random(-3, 3), i*boxSize + random(-3, 3), boxSize);
    }
  }
}
