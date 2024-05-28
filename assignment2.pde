int x, y; // Position of the ball
int speedY; // Vertical speed of the ball
int radius; // Radius of the ball
int direction; // Direction of the ball's movement (1 for down, -1 for up)
int counter; // Array of colors
color currentColor; // Current color of the ball

void setup() {
  size(400, 400);
  x = width / 2;
  y = height / 2;
  speedY = 4;
  radius = 30;
  direction = 1;
  counter = 0;  
  currentColor = color(200, 0, 200);
}
void draw() {
  background(0, 200, 255);
  fill(currentColor);
  circle(x, y, radius * 2);
  y += speedY * direction;
 
  if (y + radius >= height) {
    direction = -1;
    y = height - radius;
  } else if (y - radius <= 0) {
    direction = 1;
    y = radius;
    counter++;
    currentColor = color(random(0,255), random(0,255), random(0,255));
  }
 
  fill(255);
  textSize(32);
  text("Counter: " + counter, 10, 30);
}
