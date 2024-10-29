import random
from time import sleep
from pythonosc import udp_client

# Set up OSC client
client = udp_client.SimpleUDPClient("127.0.0.1", 12000)  # IP and port for Processing

def generate_art_parameters():
    while True:
        shape_type = random.choice(["circle", "square", "triangle"])  # Shape type
        x_pos = random.randint(0, 640)  # X position
        y_pos = random.randint(0, 480)  # Y position
        shape_size = random.randint(20, 100)  # Size of shape
        color_r = random.randint(0, 255)  # Red channel
        color_g = random.randint(0, 255)  # Green channel
        color_b = random.randint(0, 255)  # Blue channel
        
        # Send data to Processing
        client.send_message("/art_params", [shape_type, x_pos, y_pos, shape_size, color_r, color_g, color_b])
        sleep(0.5)  # Control the update rate

if __name__ == "__main__":
    generate_art_parameters()
