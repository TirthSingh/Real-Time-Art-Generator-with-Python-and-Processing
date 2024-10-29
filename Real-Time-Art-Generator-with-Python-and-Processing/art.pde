import processing.video.*;

// Variable to hold onto Capture object.
Capture video;

void setup() {
  size(640, 480);
  background(255);
  
  // Start the capture process
  video = new Capture(this, width, height);
  video.start();
}

void captureEvent(Capture video) {
  // Read image from the camera
  video.read();
}

void draw() {
  if (video.available()) {
    video.read();
    video.loadPixels();
    
    // Loop over every pixel and apply sketch effect
    for (int y = 0; y < height; y += 10) {  // Step size of 10 for faster sketch
      for (int x = 0; x < width; x += 10) {
        int index = x + y * video.width;
        color c = video.pixels[index];

        // Use a large stroke to simulate the "sketch" effect
        stroke(c);
        strokeWeight(10);  // Larger stroke for faster drawing
        point(x, y);  // Draw a point at (x, y)
      }
    }
    
    noLoop();  // Stop the loop after one frame to capture a static image
  }
}
