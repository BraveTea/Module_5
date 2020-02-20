//Screencast_5_4 

int sliderPosition;
final float sliderX = 70;
final float sliderY = 100;
final float sliderWidth = 300;
final float sliderHeight = 50;
final int numberOfSliderPositions = 4;


void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  sliderPosition = determinePosition(sliderX, sliderWidth, numberOfSliderPositions);
  drawSlider(sliderX, sliderY, sliderWidth, sliderHeight, sliderPosition, numberOfSliderPositions);
  text(sliderPosition, sliderX, sliderY + sliderHeight + 25);
}
