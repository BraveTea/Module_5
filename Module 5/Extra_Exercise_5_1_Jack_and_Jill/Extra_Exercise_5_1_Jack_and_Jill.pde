//Extra_Exercise_5_1_Jack_and_Jill

void setup(){
  bmiSubject("Jack", 85, 1.8);
  bmiSubject("Jill", 65, 1.65);
  bmiSubject("Hill", 10000, 30.0);
}

void bmiSubject(String name, float mass, float height){
  printData(name, mass, height);
}

float bmi(float mass, float height){
  return mass / (height * height);
}

void printData(String name, float mass, float height){
  println(name, "weighs:", mass, "and is", height, "metres tall and has a BMI of", bmi(mass, height));
}
