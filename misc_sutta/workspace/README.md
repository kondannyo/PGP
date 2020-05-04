## Setup (Linux/OS X)

```sh
virtualenv -p python3 venv
. venv/bin/activate
pip install -r requirements.txt
```

## Setup (Windows)

```bat
windows-setup
```

## Run (Linux/OS X)

```sh
. venv/bin/activate
doit
```

## Run (Windows)

```sh
venv/Scripts/activate
doit
```

## Cache pip packages

```sh
pip install --download=.pip-cache -r requirements.txt
```

## Get cached pip packages

```sh
pip install --no-index --find-links=.pip-cache -r requirements.txt
```
