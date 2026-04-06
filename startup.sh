#/bin/bash
python -m venv voyager_env
source voyager_env/bin/activate
pip install ipykernel
python -m ipykernel install --user --name=voyager_env
jupyter notebook

## TODO Start the MCP servers
# Weather MCP
# News MCP
