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

# Top Free AI Tools - 2026 Edition

Here is a curated list of the best FREE AI tools you can access right now:

## Chatbots & AI Assistants

| # | Tool | Free Access | Link |
|---|------|-------------|------|
| 1 | **ChatGPT** | Free GPT-4o mini + limited GPT-5 | https://chatgpt.com |
| 2 | **Google Gemini** | Free tier with strong Google integration | https://gemini.google.com |
| 3 | **Microsoft Copilot** | Free access to GPT-4, DALL-E 3 | https://copilot.microsoft.com |
| 4 | **Perplexity AI** | Free sourced answers & research | https://perplexity.ai |
| 5 | **Claude (Anthropic)** | Free tier available | https://claude.ai |
| 6 | **HuggingChat** | No login required, open-source models | https://huggingface.co/chat |
| 7 | **Ollama** | Fully free, run locally | https://ollama.com |

## Image Generation

| # | Tool | Free Access | Link |
|---|------|-------------|------|
| 8 | **Leonardo AI** | 150 free daily credits | https://leonardo.ai |
| 9 | **Canva AI Art** | Free with Canva account | https://canva.com |
| 10 | **DALL-E 2** | Free image creation | https://openai.com/dall-e-2 |
| 11 | **Bing Image Creator** | Free, powered by DALL-E 3 | https://bing.com/images/create |
| 12 | **Stable Diffusion** | Free open-source | https://stability.ai |

## Writing & Content

| # | Tool | Free Access | Link |
|---|------|-------------|------|
| 13 | **Copy.ai** | 2,000 words/month free | https://copy.ai |
| 14 | **Rytr** | Free plan with 10K chars/month | https://rytr.me |
| 15 | **QuillBot** | Free paraphrasing & grammar | https://quillbot.com |
| 16 | **Writesonic** | Free tier available | https://writesonic.com |

## Coding & Development

| # | Tool | Free Access | Link |
|---|------|-------------|------|
| 17 | **Codeium** | Truly free, unlimited | https://codeium.com |
| 18 | **GitHub Copilot Free** | 2,000 completions/month | https://github.com/features/copilot |
| 19 | **Cursor** | Free tier available | https://cursor.sh |
| 20 | **Replit AI** | Free coding assistant | https://replit.com |

## Research & Productivity

| # | Tool | Free Access | Link |
|---|------|-------------|------|
| 21 | **Google NotebookLM** | Free, 100 notebooks | https://notebooklm.google.com |
| 22 | **Notion AI** | Limited free responses | https://notion.so |
| 23 | **JADBio** | Free AutoML platform | https://jadbio.com |

## Video & Audio

| # | Tool | Free Access | Link |
|---|------|-------------|------|
| 24 | **Lumen5** | Free video creation | https://lumen5.com |
| 25 | **ElevenLabs** | Free tier for text-to-speech | https://elevenlabs.io |

## Open Source & Local AI

| # | Tool | Free Access | Link |
|---|------|-------------|------|
| 26 | **Jan AI** | Desktop app, fully free | https://jan.ai |
| 27 | **Ollama** | Run LLaMA, Mistral locally | https://ollama.com |
| 28 | **Upscayl** | Free AI image upscaler | https://upscayl.org |

## Google Cloud Free AI

| # | Tool | Free Access | Link |
|---|------|-------------|------|
| 29 | **Google AI Studio** | Free Gemini API access | https://aistudio.google.com |
| 30 | **Google Cloud Translation** | Free tier available | https://cloud.google.com |
| 31 | **Google Speech-to-Text** | Free monthly quota | https://cloud.google.com |

---
*Scene 1 - Built with GitHub + Ollama | Last Updated: April 2026*
