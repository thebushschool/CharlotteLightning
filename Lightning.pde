float x, y, prevX, prevY, a;
float incx = 3;
float incy = 3;
PImage bg;
double sum=0, ran;
int c1=0, c2=0, c3=0;
void setup() {
  size(975, 824);
  //size(600, 800);
  bg=loadImage("975-88.jpg");
  x = width/2;
  y = 0;
  a = (int)(Math.random()*4)+1;
  noLoop)(;
}

void draw () {
  background(bg);
  createLightning();
  x = width/2;
  y = 0;
  a = (int)(Math.random()*4)+1;
}

void createLightning() {
  while ( y <= height - 50) {
    fill(255, 0, 0, 200);
    strokeWeight(a);

    sum++;
    ran = Math.random();
    if (ran < .3) {  //want 30% execution here
      c1++;
      prevX = x;
      prevY = y;

      x += incx*((int)(Math.random()*5)-5);
      y += incy*((int)(Math.random()*8)-2);
    } else if (ran < .9) {  //want 60% execution here
      c2++;
      prevX = x;
      prevY = y;

      x += incx*((int)(Math.random()*3)-1);
      y += incy*((int)(Math.random()*8)-2);
    } else {    //want 10% execution here
      c3++;
      prevX = x;
      prevY = y;

      x += incx*((int)(Math.random()*5)+5);
      y += incy*((int)(Math.random()*8)-2);
    }
    line(prevX, prevY, x, y);

    //String out = String.format("%2.2f%% %2.2f%% %2.2f%%",
    //  c1/sum*100.0, c2/sum*100.0, c3/sum*100.0);
    //System.out.println(out);
  }
}
void mousePressed() {
  background(bg);
  createLightning();
  x = width/2;
  y = 0;
  a = (int)(Math.random()*4)+1;
}
