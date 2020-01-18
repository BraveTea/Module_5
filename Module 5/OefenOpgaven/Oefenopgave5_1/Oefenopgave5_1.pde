//Oefenopgave5_1

void setup(){
  float num1 = 7.56;
  float num2 = 7.498;
  float num3 = 4.999;
  float num4 = -2.0001;
  
  String text1 = format(num1);
  println(text1);
  
  String text2 = format(num2);
  println(text2);
  
  String text3 = format(num3);
  println(text3);
  
  String text4 = format(num4);
  println(text4);
}

String format(float x){
  return nf(x, 1, 1); //nf() is the important function here to know
}

//it feels a bit much to write a function for a perfectly good function as nf(). 
//Perhaps if I named it formatToOneDigit it would add something, but as is
//it doesn't really. Although, now I think about it, this might be to teach
//me the first beginnings return;
