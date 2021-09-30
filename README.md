# coding-for-economists

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/aeturrell/coding-for-economists/HEAD)

This readme is intended to help those contributing to or editing the book, not those trying to follow it. To read or use the book, head to the [coding for economists website](https://aeturrell.github.io/coding-for-economists/intro.html). You can use the book interactively via the following options, all available via the link above:

- download pages to your computer as jupyter notebooks
- run pages in Google Colab through your browser
- run pages in Binder through your browser

## Dev

These instructions are only for developers working on the book.

### Setting up the Environment

Install the environment using

```bash
poetry install
```

on the command line. After installing the environment, activate using `conda activate codeforecon`, and use

```bash
poetry run python3.8 -m ipykernel install --user --name=codeforecon
```

to install a new named ipykernel. To ensure that Jupyter notebooks are running the correct kernel, open them in Jupyter notebook server and change the kernel there to 'codeforecon' and save it.

### Building the Book

To build the book using Jupyter books use

```bash
poetry run jupyter-book build .
```

Once this command is run, you should be able to look at the HTML files for the book locally on your computer.

### Uploading Built Files

See [here](https://jupyterbook.org/publish/gh-pages.html) for how to upload revised HTML files, but the key command is

```bash
ghp-import -n -p -f _build/html
```

To perform the pre-commit checks, use

```bash
poetry run pre-commit run --all-files
```

### Pre-commit

Pre-commit is currently configured to:

- check for large added files
- strip outputs from notebooks
- apply the [black](https://black.readthedocs.io/en/stable/) code formatter to .py and .ipnb scripts

If **black-nb** finds a pre-commit error that is difficult to diagnose, a tip is to convert it to a regular script to find the problem, using, for example,

```bash
poetry run jupytext --to py data-intro.ipynb
```
