# Scene 1 - Ollama AI Model Runner

## Overview
This project sets up and runs Ollama, a local AI model runner, using GitHub for version control and automation.

## Step 1: Install Ollama

### On Windows:
1. Download from https://ollama.com/download
2. Run the installer (OllamaSetup.exe)
3. Ollama will start automatically in the system tray

### On Linux (Ubuntu/Debian):
```bash
curl -fsSL https://ollama.com/install.sh | sh
```

### On macOS:
```bash
brew install ollama
```

## Step 2: Pull a Model
```bash
# Pull the default llama2 model
ollama pull llama2

# Or pull a smaller model for faster testing
ollama pull mistral

# Or pull a coding model
ollama pull codellama
```

## Step 3: Run the Model
```bash
ollama run llama2
```

## Step 4: Run Ollama as a Server
```bash
ollama serve
```
This starts the API server on http://localhost:11434

## Step 5: Use the API
```bash
curl http://localhost:11434/api/generate -d '{
  "model": "llama2",
  "prompt": "Why is the sky blue?"
}'
```

## GitHub Actions Integration

This repo includes a GitHub Actions workflow to automate model pulling and testing.

## Project Structure
```
ollama-scene1/
  README.md
  .github/
    workflows/
      ollama-run.yml
  scripts/
    run_ollama.sh
  src/
    app.py
```

## Quick Commands
| Command | Description |
|---------|-------------|
| `ollama serve` | Start the Ollama server |
| `ollama run <model>` | Run a model interactively |
| `ollama pull <model>` | Download a model |
| `ollama list` | List installed models |
| `ollama rm <model>` | Remove a model |

---
*Scene 1 - Built with GitHub + Ollama*
