float offset = 0.12;
float wallY = 2.25;
float remainder = offset - (wallY%offset);
println(remainder);

/*
The remainder is the part of the roll that need to be cut off and is thus
not usuable out of the roll
Could it be as easy as floor( strips + (number of strips * remainder)); ?
No to figure out how to do this in an elegant manner....
*/
