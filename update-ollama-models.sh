#!/usr/bin/env bash

set -euo pipefail

echo "Checking installed Ollama models..."

# Get installed model names (skip header)
models=$(ollama list | awk 'NR>1 {print $1}')

if [[ -z "$models" ]]; then
    echo "No models found."
    exit 0
fi

echo
echo "Found models:"
printf '  %s\n' $models
echo

for model in $models; do
    echo "========================================"
    echo "Updating: $model"
    ollama pull "$model"
    echo
done

echo "========================================"
echo "All models checked."
