//ModuleOpgave_5_BMI_Grafiek_met_sliders

int sliderPosition;
int numberOfSliderPositions;
final float sliderX = 70;
final float sliderWidth = 300;
final float sliderHeight = 50;

void setup(){
  size(800,800);
}

void draw(){
  background(0);
  sliderForHeight();
  sliderForWeight();
}

void sliderForHeight(){
  final float sliderY = 100;
  numberOfSliderPositions = 20;
  sliderPosition = determinePosition(sliderX, sliderWidth, numberOfSliderPositions);
  drawSlider(sliderX, sliderY, sliderWidth, sliderHeight, sliderPosition, numberOfSliderPositions);
  text(sliderPosition, sliderX, sliderY + sliderHeight + 25);
}

void sliderForWeight(){
  final float sliderY = 250;
  numberOfSliderPositions = 50;
  sliderPosition = determinePosition(sliderX, sliderWidth, numberOfSliderPositions);
  drawSlider(sliderX, sliderY, sliderWidth, sliderHeight, sliderPosition, numberOfSliderPositions);
  text(sliderPosition, sliderX, sliderY + sliderHeight + 25);
}


/* 
NEXT time

Start by taking a look at how to get the slider function in the library to 
work in this new file...
You can compare to Screencast_5_5 because it is working there.

BMI code also needs to be in a seperate tab (library)
Reuse the code from the BMI file!! This is obligatory

After you have succesfully worked that out you can start on writing the 
pseudo code or otherwise start with writing down the functions you 
think you need to run this.

Go through the 3 parts of this Assignment

part 1:
Make an analysis of all needed parts and write these down in a programme design
Think of variables, functions, etc

part 2:
Think of what could go wrong while when using the programme (edge cases?)
Design test cases

part 3:
Implement the programme according to your design in part 1 (and of course use
results from part 2 for this).

*/
