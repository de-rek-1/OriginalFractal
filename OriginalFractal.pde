void setup() {
  size(600, 600);
  noFill();
  stroke(0);
  circ(width/2, height/2, 200, 4);
}
void circ(float x, float y, float r, int level) {
  if (level == 0){
    return;
  }
  ellipse(x, y, r*2, r*2);
  float newR = r / 2;
  circ(x + r/2, y, newR, level - 1);
  circ(x - r/2, y, newR, level - 1);
  circ(x, y + r/2, newR, level - 1);
  circ(x, y - r/2, newR, level - 1);
}
