
#!/bin/bash

# Scene 1 - Ollama Runner Script
# This script sets up and runs Ollama locally

set -e

echo "=== Scene 1 - Ollama Setup ==="

# Check if Ollama is installed
if ! command -v ollama &> /dev/null; then
    echo "Ollama not found. Installing..."
    curl -fsSL https://ollama.com/install.sh | sh
fi

# Start Ollama server in background
echo "Starting Ollama server..."
nohup ollama serve > ollama.log 2>&1 &

# Wait for server to be ready
echo "Waiting for Ollama server to start..."
sleep 10

# Check if server is running
if curl -s http://localhost:11434/api/tags > /dev/null; then
    echo "Ollama server is running!"
else
    echo "Error: Ollama server failed to start"
    exit 1
fi

# Pull model if not present
echo "Checking for qwen3.5:0.8b model..."
if ! ollama list | grep -q qwen3.5:0.8b; then
    echo "Pulling qwen3.5:0.8b model..."
    ollama pull qwen3.5:0.8b
else
    echo "qwen3.5:0.8b model already exists."
fi

# Run the model
echo "Running Ollama with qwen3.5:0.8b..."
ollama run qwen3.5:0.8b "Hello! This is Scene 1 running on your local machine."

echo "=== Scene 1 Complete ==="
