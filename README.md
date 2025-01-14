# Getting started

Follow the steps at https://www.mkdocs.org/

## Installing Python
1. Determine if `python` needs to be installed, follow instructions on https://www.python.org/downloads/ Make sure to select add to PATH

```
$ python --version
Python 3.12.4
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
