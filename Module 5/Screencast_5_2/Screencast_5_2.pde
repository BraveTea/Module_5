//Screencast_5_2

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  drawSlider(70, 100, 300, 50);
}

void drawSlider(float x, float y, float wdth, float hght) {
  float barWidth = wdth / 3; 
  int barPos;

  noStroke();
  fill(255);
  rect(x, y, wdth, hght);
  fill(#2257F0);

  if (mouseX < barWidth + x) {
    barPos = 0;
    rect(x, y, barWidth, hght);
  } 
  else if (mouseX < x + 2 * barWidth){
    barPos = 1; 
    rect(x + barWidth * barPos, y, barWidth, hght);
  }
  else {
    barPos = 2;
    rect(x + barWidth * 2, y, barWidth, hght);
  }
}
