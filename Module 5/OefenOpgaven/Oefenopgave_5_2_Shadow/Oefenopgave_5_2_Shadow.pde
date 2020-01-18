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

//WALL (all numbers are in meters)
float wallWidth = 5.5;
float wallHeight = 2.25;

//ROLL OF WALLPAPER
float rollWidth = 0.52;
float rollLength = 10;

float patternSize = 0.0;

void setup() {
  size (400, 400);
  println(numberOfRollsRequired(wallWidth, wallHeight, rollWidth, rollLength, patternSize));
}

void draw() {
}


int numberOfRollsRequired;

int numberOfRollsRequired(float wallX, float wallY, float rollX, float rollY, float offset) {
  int stripsOnWall = ceil(wallX / rollX);
  
  if (offset == 0) {
    int stripsOutOfRoll = floor(rollY / wallY);
    numberOfRollsRequired = ceil(float(stripsOnWall)/float(stripsOutOfRoll));
  }
  else{
    float num = rollY/wallY;
    float B = wallY % offset;
    int stripsOutOfRoll = floor(num - (B*num));
    numberOfRollsRequired = ceil(float(stripsOnWall)/float(stripsOutOfRoll));
    
  }

  return numberOfRollsRequired;
}
