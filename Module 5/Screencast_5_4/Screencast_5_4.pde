//Screencast_5_4 

int sliderPosition;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  //determinePosition
  sliderPosition = determinePosition(70, 300, 4);
  drawSlider(70, 100, 300, 50, sliderPosition, 4);
  //text(sliderPosition, 70, 100 + 50 + 25);
}


//prereq position < numberOfPositions && position >= 0
void drawSlider(float x, float y, float sliderWidth, float sliderHeight, 
                    int position, int numberOfPositions) {
                      
  float barWidth = sliderWidth / numberOfPositions; 
  
 
  noStroke();
  fill(255);
  rect(x, y, sliderWidth, sliderHeight);
  fill(#2257F0);
  rect(x + position * barWidth, y, barWidth, sliderHeight);
}


int determinePosition(float x, float sliderWidth, int numberOfPositions){
  
  float barWidth = sliderWidth/numberOfPositions;
  int barPos;

  if (mouseX < x){
    barPos = 0;
  } 
  else if (mouseX >= sliderWidth + x){
    barPos = numberOfPositions - 1;
  }
  else{
    barPos = floor((mouseX - x) / barWidth);
  }
  
  return barPos;
}
