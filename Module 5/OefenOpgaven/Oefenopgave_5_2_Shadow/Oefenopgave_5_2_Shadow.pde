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




float remainderPerStrip = offset - (wallY%offset);
    float remainderTotal = stripsOnWall
    float stripsOutOfRollOffset = floor(rollY 
    
    /*
    float strip = wallY + (wallY % offset);
    println("wally = ", wallY, "\noffset = ", offset, "\nwallY%offset = ", wallY % offset, "\nstrip = ", strip);
    println(wallY % offset);
    println(strip);
    float stripsOutOfRollOffset = floor(rollY / strip);
    println(stripsOutOfRollOffset);
    numberOfRollsRequired = ceil(stripsOnWall/stripsOutOfRollOffset);
    */
  // THIS CODE SHOULD WORK FOR YOU!!!! Rewrite else statement to accommodate the remainder
    //float offset = 0.12;
    //float wallY = 2.25;
    //float remainder = offset - (wallY%offset);
    //println(remainder);

/*
The remainder is the part of the roll that need to be cut off and is thus
not usuable out of the roll
Could it be as easy as floor( strips + (number of strips * remainder)); ?
No to figure out how to do this in an elegant manner....
*/



    
    //THOUGHT PROCESS
    /*
    roll delen door offset, want moet % == 0 worden. De rest valt al weg Als ik weet wat de
    offset is dan moet ik zeggen dat de roll alleen maar mag starten op een plek waar Roll/offset 
    een integer/geheel getal is. Want als dat niet is dan komt het scheef uit.
    Moet ik em wel eerst delen? Denk het niet, even onzeker daarover.
    Stel dat de offset 10 cm is dan mag een roll altijd alleen maar starten op % == 0
    Maar dan moet er nog genoeg overblijven zodat de gehele muur/strip in de hoogte gedekt wordt.
    Daarna moet er gekeken worden dat wat er overblijft aan de onderkant weggehaald wordt. Maar als
    ik altijd kijk aan de bovenkant of % == 0 is dan hoef ik de onderkant niet te berekenen en dus
    niet er af te halen. Alleen kijken of je de onderkant haalt
    Maar dit werkt wel in mijn hoofd maar klopt volgens mij niet. 
    Lengte van de strip == hoogte van de muur. 
    Als de strip 2,25 meter is en de offset is 0,10 dan hou je 0,05 over wat je moet verwijderen per strip
    Dus ik wil de strip lengte round() doen naar de dichtstbijzijnde offset maar bij 2,25 en offset 0,10
    is dat dus round naar 2,30
    Round/ceil enzo werken hier niet want ze ronden af naar ints (dit zou kunnen werken als ik ga werken cm 
    ipv m , maar ik weet niet of dat een goed idee is).
    
    Als je eerst rest berekent door float rest = wallY - (wallY % offset); dan zeg je, hoeveel banen hiervan
    passen er in zijn geheel naast elkaar? Floor()
    
    
    
    /*
    float num = rollY/wallY;
    float B = wallY % offset;
    float stripsOutOfRoll = floor(num - (B*num));
    numberOfRollsRequired = ceil(stripsOnWall/stripsOutOfRoll);
    */
