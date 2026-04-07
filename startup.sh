#/bin/bash

# Ensure Ollama models are available (won't start interactive shell)
echo "Ensuring models are available..."
ollama pull qwen3:0.6b
ollama pull smollm2:135m

# Setup virtual environment
if [ ! -d "voyager_env" ]; then
    echo "Creating virtual environment..."
    python -m venv voyager_env
fi

source voyager_env/bin/activate

# Install dependencies if needed
#pip install -q ipykernel langchain-ollama mcp python-dotenv

# Register kernel
python -m ipykernel install --user --name=voyager_env --display-name "Voyager (Python 3)"

echo "Starting Jupyter Notebook..."
jupyter notebook

## TODO Start the MCP servers
# Weather MCP
# News MCP
