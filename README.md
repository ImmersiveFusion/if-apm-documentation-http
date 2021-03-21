# Getting started

Follow the steps at https://www.mkdocs.org/

## Install Python
1. Determine if `python` needs installed, follow instructions

```
$ python --version
Python 3.8.2
```
2. Determine if `pip` needs installed, run
```
$ pip --version
pip 20.0.2 from /usr/local/lib/python3.8/site-packages/pip (python 3.8)
```
- if returns empty, install with:
```
python -m pip install -U pip
```

## Installing Mkdocs and plugins

```ps
& envprep.ps1
```

## Run 
```ps
powershell .\serve.ps1
```

Look at the serve output for the local URL for the docs.


## Use rich elements
https://squidfunk.github.io/mkdocs-material/

## Publish with from folder where the yaml file is
```
mkdocs build
```
