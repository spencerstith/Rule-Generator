Cellular cellular;

public static int RULE = 106;
public static int SCALE = 2;
public static int POWER = 3;
public static int DIGITS = 1 << POWER;

void setup() {
  size(600, 600);
  //fullScreen();
  cellular = new Cellular();
  fill(0);
  background(255);
  surface.setTitle("Rule Gen | Rule " + RULE);
}

void draw() {
  cellular.cellulate();
  if (cellular.finished()) {
    background(255);
    RULE++;
    cellular = new Cellular();
    surface.setTitle("Rule Gen | Rule " + RULE);
  }
}
