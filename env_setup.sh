# to install non Python packages in linux envs
sudo apt-get install graphviz graphviz-dev

# name the env
poetry run python3.8 -m ipykernel install --user --name=codeforecon

# download the nltk models

# download the spacy models
poetry run python3.8 -m spacy download en_core_web_sm