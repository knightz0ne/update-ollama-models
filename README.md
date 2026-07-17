# update-ollama-models

A simple Bash script that automatically updates every Ollama model installed on your machine.

Instead of manually checking each model, this script discovers all locally downloaded models and runs `ollama pull` on each one to ensure they are up to date.

---

## Features

- Automatically detects all installed Ollama models
- Updates every model with a single command
- Requires no additional dependencies
- Safe to run repeatedly
- Works on any system with Bash and Ollama installed

---

## Requirements

- Bash
- Ollama installed and available in your `PATH`

Verify your Ollama installation:

```bash
ollama --version
```

---

## Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/ollama-model-updater.git
cd ollama-model-updater
```

Make the script executable:

```bash
chmod +x update-ollama-models.sh
```

---

## Usage

Run the updater:

```bash
./update-ollama-models.sh
```

The script will:

1. Find all downloaded Ollama models
2. Display the models it discovered
3. Pull the latest version of each model
4. Report completion after all models have been checked

Example output:

```text
Checking installed Ollama models...

Found models:
  llama3.2
  qwen3
  mistral
  deepseek-r1

========================================
Updating: llama3.2
pulling manifest...
success

========================================
Updating: qwen3
pulling manifest...
success

========================================
All models checked.
```

---

## How It Works

Ollama updates models using:

```bash
ollama pull <model>
```

This script automates the process by first retrieving all installed models:

```bash
ollama list
```

Then updating each model:

```bash
ollama pull "$model"
```

---

## Project Structure

```text
.
├── update-ollama-models.sh
├── README.md
└── LICENSE
```

---

## Troubleshooting

### No models found

Check your installed models:

```bash
ollama list
```

Install a model first:

```bash
ollama pull llama3.2
```

### Ollama command not found

Verify that Ollama is installed and available:

```bash
which ollama
```

---

## Contributing

Contributions are welcome.

You can help by:

- Reporting issues
- Suggesting improvements
- Submitting pull requests

---

## License

This project is licensed under the MIT License.

---

## Author

Created for users who want a simple way to keep their local Ollama model collection current.
