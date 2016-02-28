float[] values;
int index;
int space = 10 ;

int y = 100;

void setup() {
  size(600, 250);
  background(0);
  frameRate(30);

  values = new float[width/3];
  index = 0;
}

float maybeRandomHeight() {
  if (space%50==0) { //  Modulo: Value of a REMAINDER
    //if (random(10) < 1) {
    return random(height/3, 2*height/3);
  } else {
    return 0;
  }
}

void draw() {
  background(255);

  ellipse (30, y, 30, 30);
  y = y + 1; // 1
  if (mousePressed) {
    ellipse (30, y, 30, 30);
    y = y - 10;
  }
          //Logical operators ( \\ )bellow delete button= allow you to put two "if" statement inside one 
          // or is needed for \\
 // if ( ) {//If statement is to prevent ball 
  //  }
  //  else {
    //  }
          


  values[index] = maybeRandomHeight();
  index = index + 1;
  if (index >= values.length) {
    index = 0;
  }

  for (int i = 0; i < values.length; ++i) {
    int realIndex = index + i;
    if (realIndex >= values.length) {
      realIndex -= values.length;
    }
    line(i*1, height-values[realIndex], i*1, height);
      if (values[realIndex]!=0) { //

    line(i*1, height-values[realIndex]-66, i*1, 0);
    }
   }
   space++; // adds more space between lines
}

//added more space between lines from -65 to -66 
//Generate if statement 
