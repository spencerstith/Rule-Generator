Cellular cellular;

void setup() {
  //size(800, 800);
  fullScreen();
  cellular = new Cellular(170, 2);
  fill(0);
  background(255);
}

void draw() {
  cellular.show();
  cellular.update();
}
