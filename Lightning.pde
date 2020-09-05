int r = 255;
int g = 255;
int startX = 200;
int startY = 50;
int endX = 200;
int endY = 50;
PImage img;
  
void setup()
{
  size(400,400);
  strokeWeight(2); 
  img = loadImage("pokemon.png");
  background(0, 0, 0);
}

void draw()
{  
  delay(0);
  background(0, 0, 0);
  image(img, 175, 0);
  int b = ((int)(Math.random() * 190));
  stroke(r, g, b);  
  
  while (endY < 400) {
    
    endX = startX + (int)((Math.random() * 20) - 10);
    endY = startY + (int)((Math.random() * 10));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
    delay(100);
}

void mousePressed()
{
    startX = 200;
    startY = 50;
    endX = 200;
    endY = 50;
}
