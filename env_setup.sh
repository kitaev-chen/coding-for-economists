sudo apt-get update -y

# to install non Python packages in linux envs
sudo apt-get -y install graphviz graphviz-dev libgdal-dev build-essential

sudo apt-get -y install libgeos-dev libproj-dev proj-data proj-bin

# install the env
poetry install

# name the env
poetry run python3.8 -m ipykernel install --user --name=codeforecon

# download the nltk models

# download the spacy models
poetry run python3.8 -m spacy download en_core_web_sm

# use conda for what can't be done otherwise
conda init

# replace shell
exec bash

# conda packages
sudo conda install -y osmnx
sudo conda install -y plotly