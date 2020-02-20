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
 
  if (mouseX < x){
    return 0;
  } 
  else if (mouseX >= sliderWidth + x){
    return numberOfPositions - 1;
  }
  else{
    return floor((mouseX - x) / barWidth);
  }
}
