int r = 255;
int g = 255;
int zapStartX = 50;
int zapStartY = 182;
int zapEndX = 50;
int zapEndY = 182;
int jolStartX = 336;
int jolStartY = 187;
int jolEndX = 336;
int jolEndY = 187;
PImage jolteon;
PImage zapdos;
boolean zapTouch;
boolean jolTouch;
int circleX = 200;
int circleY = 200;
int circleW = 20;
int circleH = 20;
  
void setup()
{
  size(400,400);
  jolteon = loadImage("jolteon.png");
  zapdos = loadImage("zapdos.jpg");
  background(0, 0, 0);
}

void draw()
{  
  delay(0);
  background(0, 0, 0);
  strokeWeight(0);
  fill(52, 159, 201);
  ellipse(circleX, circleY, circleW, circleH);
  image(zapdos, 0, 165);
  image(jolteon, 336, 160);
  
  strokeWeight(2); 
  int b = ((int)(Math.random() * 190));
  stroke(r, g, b);  
  
  while (zapEndX < 200) {
    zapEndX = zapStartX + (int)((Math.random()*10));
    zapEndY = zapStartY + (int)((Math.random()*20)-10);
    line(zapStartX, zapStartY, zapEndX, zapEndY);
    
    int c = (int) sqrt(pow((200 - zapEndX), 2) + pow((190 - zapEndY), 2));
    if (c <= 20) {
       zapTouch = true;
    }
   
    zapStartX = zapEndX;
    zapStartY = zapEndY;
  }
  while (jolEndX > 200) {
    jolEndX = jolStartX + (int)((Math.random()*10)-20);
    jolEndY = jolStartY + (int)((Math.random()*20)-10);
    line(jolStartX, jolStartY, jolEndX, jolEndY);
    
    int d = (int) sqrt(pow((200 - jolEndX), 2) + pow((190 - jolEndY), 2));
    if (d <= 20) {
       jolTouch = true;
    }
    
    jolStartX = jolEndX;
    jolStartY = jolEndY;
  }
  circleW += 10;
  circleH += 10;
  
  delay(100);
}

void mousePressed()
{    
  circleW = 20;
  circleH = 20;

  zapStartX = 50;
  zapStartY = 182;
  zapEndX = 50;
  zapEndY = 182;
  
  jolStartX = 336;
  jolStartY = 187;
  jolEndX = 336;
  jolEndY = 187;
 
  zapTouch = false;
  jolTouch = false;
}
