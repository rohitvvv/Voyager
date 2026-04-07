#/bin/bash

# Ensure Ollama models are available (won't start interactive shell)
echo "Ensuring models are available..."
ollama pull qwen2.5:3b
ollama pull smollm2:135m

# Setup virtual environment
if [ ! -d "voyager_env" ]; then
    echo "Creating virtual environment..."
    python -m venv voyager_env
fi

source voyager_env/bin/activate

# Register kernel
python -m ipykernel install --user --name=voyager_env --display-name "Voyager (Python 3)"

echo "Starting Jupyter Notebook..."
jupyter notebook

