# Real-Time-Art-Generator-with-Python-and-Processing
# Real-Time Art Generation with Python and Processing

This project demonstrates real-time art generation by integrating **Python** and **Processing** using **OSC (Open Sound Control)**. The Python script generates random artistic parameters, such as colors, shapes, and sizes, and sends them to a Processing sketch that dynamically visualizes these parameters.

## 📜 Project Overview
The aim is to create a real-time interaction between Python and Processing. Python will continuously generate random art-related data and communicate it via OSC to Processing, where the visuals will be rendered based on the data received.

### Components
1. **Python**: Generates random visual parameters (e.g., color, shape, size) and sends them to Processing using OSC.
2. **Processing**: Receives the data from Python via OSC and renders the visuals in real-time.

## 🚀 Getting Started

### Prerequisites
- Python 3.x
- Processing 3.x or higher
- `oscP5` library for Processing
- `python-osc` library for Python

### 📦 Installation

1. **Install `python-osc` for Python:**
   ```bash
   pip install python-osc and pip3 install python-osc
2.  **Import `osc5` library for Processing:**
