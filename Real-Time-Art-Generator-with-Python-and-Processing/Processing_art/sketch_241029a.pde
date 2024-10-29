import oscP5.*;
import netP5.*;

OscP5 oscP5;

String shapeType = "circle";  // Default shape
int x_pos = 0;
int y_pos = 0;
int shapeSize = 50;  // Renamed to avoid conflict with Processing's size()
int color_r = 255;
int color_g = 255;
int color_b = 255;

void setup() {
  size(640, 480);
  background(255);
  
  // Initialize OSC
  oscP5 = new OscP5(this, 12000);  // Listen on port 12000
}

void draw() {
  noStroke();
  fill(color_r, color_g, color_b);
  
  if (shapeType.equals("circle")) {
    ellipse(x_pos, y_pos, shapeSize, shapeSize);
  } else if (shapeType.equals("square")) {
    rect(x_pos, y_pos, shapeSize, shapeSize);
  } else if (shapeType.equals("triangle")) {
    triangle(x_pos, y_pos, x_pos - shapeSize / 2, y_pos + shapeSize, x_pos + shapeSize / 2, y_pos + shapeSize);
  }
}

// Function to receive OSC messages
void oscEvent(OscMessage msg) {
  if (msg.checkAddrPattern("/art_params")) {
    shapeType = msg.get(0).stringValue();
    x_pos = msg.get(1).intValue();
    y_pos = msg.get(2).intValue();
    shapeSize = msg.get(3).intValue();  // Adjusted to use `shapeSize`
    color_r = msg.get(4).intValue();
    color_g = msg.get(5).intValue();
    color_b = msg.get(6).intValue();
  }
}
