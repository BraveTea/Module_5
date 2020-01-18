//Screencast_5_1

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  drawSlider(0, 100, width, 50);
}

void drawSlider(float x, float y, float wdth, float hght) {
  noStroke();
  fill(255);
  rect(x, y, wdth, hght);
  fill(#2257F0);
  if (mouseX < wdth/2){
  rect(x, y, wdth /2, hght);
  }
  else{
  rect(x + wdth/2, y, wdth/2, hght);
  }
}
