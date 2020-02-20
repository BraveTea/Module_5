// Oefenopgave_5_2 : Behangcasus
// Effen behang

/* I am writing a programme that calculates the amount of roles of wallpaper you
 need for a specific area. 
 
 Task
 - Taking the size of the wall, how many roles of standard size wallpaper of a solid colour do I need?
 - All wallpaper needs to seamlessly connect, no overlapping parts on the vertical.
 - No seams are allowed on the horizontal. So round up ;)
 - No windows or doors have to be taken into account.
 
 What needs to happen?
 - Size of wall (x, y)
 - Size of roll of wallpaper (x, y)
 - StandardSize of roll of wallpaper (x, y)
 - Do the maths for the programme in advance.
 
 What do I want to add into the programme?
 - I want to put in a button slider or at least a button that has you choose between 
 solid wallpaper and patterned wallpaper.    
 
 I suggested to the client that I could have the user input the size of the wall and also the size
 of the wallpaper. This because it isn't always a standard size wallpaper people use.
 */

//WALL (all numbers are in metres)
float wallWidth = 5.5;
float wallHeight = 2.25;

//ROLL OF WALLPAPER (all numbers are in metres)
float rollWidth = 0.52;
float rollLength = 10;

float patternSize = 0.10;

int numberOfRollsRequired;

void setup() {
  size(400,400);
  println(numberOfRollsRequired(wallWidth, wallHeight, rollWidth, rollLength, patternSize));
  
}

void draw() {

}
  
int numberOfRollsRequired(float wallHeight, float wallWidth, float rollWidth, float rollLength, float patternSize) {
  float stripsOnWall = ceil(wallHeight / rollWidth);
  float stripsOutOfRoll;
  
  if (patternSize == 0) {
    stripsOutOfRoll = floor(rollLength / wallWidth);
  }
  else{ 
    float amountOfPatternsOnRoll = floor(rollLength / patternSize);
    float amountOfPatternsOnStrip = ceil(wallWidth / patternSize);
    stripsOutOfRoll = floor(amountOfPatternsOnRoll/ amountOfPatternsOnStrip); 
  }
  
  numberOfRollsRequired = ceil(stripsOnWall/stripsOutOfRoll);
  return numberOfRollsRequired;
}










/*
 float amountOfPatternsOnRoll = floor(rollLength / patternSize);
    println("numPattRoll = ", amountOfPatternsOnRoll);
    float amountOfPatternsOnStrip = ceil(wallWidth / patternSize);
    println("numPattStrip = ", amountOfPatternsOnStrip);
    stripsOutOfRoll = floor(amountOfPatternsOnRoll/ amountOfPatternsOnStrip);
    println("stripsonwall = ", stripsOnWall);
    println("Strips out of roll = ", stripsOutOfRoll);
    */
