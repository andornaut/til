# Python

* [./Software Engineering](./software-engineering.md)
* [andornaut@github /python-cli-app](https://github.com/andornaut/python-cli-app)
* [Documentation](https://docs.python.org/)
* [PyPI](https://pypi.org/) - The Python Package Index
* [Python on macOS via Homebrew](https://docs.brew.sh/Homebrew-and-Python)

## Books

* [Effective Python](https://effectivepython.com/)
* [Fluent Python (2nd edition)](https://www.oreilly.com/library/view/fluent-python-2nd/9781492056348/)
* [Learn Python 3 the Hard Way](https://www.goodreads.com/book/show/35561829-learn-python-3-the-hard-way)
* [Programming Python](https://www.oreilly.com/library/view/programming-python-4th/9781449398712/)
* [Two Scoops of Django 3.x](https://www.feldroy.com/books/two-scoops-of-django-3-x)

## Newsletters

* [Pycoder's Weekly](https://pycoders.com/) - Stay Up-to-Date With Your Weekly Dose Of Python

## Getting started

1. Install python3 using [ansible-ctrl/roles/dev](https://github.com/andornaut/ansible-ctrl/blob/master/roles/dev/tasks/python.yml)
1. Link `python` to `python3`
   ```
   sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 0
   ```

## Libraries and frameworks

Name | Description
--- | ---
[Beautiful Soup](https://www.crummy.com/software/BeautifulSoup/) | Parser, scraper
[DevPi](https://github.com/devpi/devpi)| Python PyPi staging server and packaging, testing, release tool
[Django](https://www.djangoproject.com/) | High-level web framework
[FastAPI](https://github.com/tiangolo/fastapi) | A modern, fast, web framework for building APIs. Based on Python type hints.
[Flask](https://github.com/pallets/flask) | Micro framework for building web applications
[NumPy](https://numpy.org/) | Scientific computing library
[Pillow](https://github.com/python-pillow/Pillow) | Open and manipulate many image file formats
[pytest](https://docs.pytest.org/en/) | A framework that makes it easy to write small, readable tests
[records](https://github.com/kennethreitz/records) | A library for making raw SQL queries to most relational databases
[requests](https://github.com/psf/requests) | A simple, yet elegant, HTTP library
[SQLAlchemy](https://www.sqlalchemy.org/) | SQL toolkit and Object Relational Mapper 
[Typer](https://github.com/tiangolo/typer) | Build great CLIs. Easy to code. Based on Python type hints. Built on top of [Click](https://github.com/pallets/click/).

## Tools

Name | Description
--- | ---
[Black Formatter for VS Code](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter) | Support the [black formatter](https://github.com/psf/black) (use [ruff](https://github.com/astral-sh/ruff) instead)
[Flake8 for VS Code](https://marketplace.visualstudio.com/items?itemName=ms-python.flake8) | Support for the [flake8 linter](https://github.com/pycqa/flake8/) (use [ruff](https://github.com/astral-sh/ruff) instead)
[Pipenv](https://pipenv.pypa.io/en/latest/) | Dev workflows for humans (use [Poetry](https://python-poetry.org/) instead)
[Pipx](https://pipx.pypa.io/)
[Poe](https://github.com/nat-n/poethepoet) | A task runner that works well with poetry
[Poetry](https://python-poetry.org/) | Python packaging and dependency management made easy
[pre-commit](https://github.com/pre-commit/pre-commit) | A framework for managing multi-language pre-commit hooks
[Python for VS Code](https://marketplace.visualstudio.com/items?itemName=ms-python.python) | Support intelliSense, linting, debugging, code navigation, code formatting, etc
[ruff](https://github.com/astral-sh/ruff)

## How-tos

### Getting started with Poetry

1. Install [pipx](https://pipx.pypa.io/stable/installation/)
1. Install poetry ```pipx install poetry```
1. Run ```poetry init```
1. Update `pyproject.toml`

[Poetry configuration](https://python-poetry.org/docs/configuration/)

* Linux `~/.config/pypoetry`
* macOS `~/Library/Application\ Support/pypoetry/config.toml`

```
# Configure Poetry to install venvs in the project directory, so that VSCode can enable them automatically
poetry config virtualenvs.in-project true

# Set PYPI access token
poetry config pypi-token.pypi ${token}
```

### Develop a non-redistributable (no setup.py) local package using Pipenv


Add an `.env` file to the project root:
```
PYTHONPATH=.
```
Pipenv and 

Add a `pytest.ini` file to the project root:
```
[pytest]
pythonpath = .
```

Add the following line to `.vscode/launch.json` configurations:
```
"envFile": "${workspaceFolder}/.env",
```

Example:
```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Python: File with env",
            "type": "python",
            "request": "launch",
            "program": "${file}",
            "justMyCode": true,
            "envFile": "${workspaceFolder}/.env",
        }
    ]
}
```

### VS Code test discovery doesn't find any tests

This only occurs when starting VS Code from a terminal that already has an active virtualenv (eg. after running `pipenv shell`).

1. CTRL+Shift+P
1. Select "Python: Select Interpreter"
1. Select the correct interpreter
1. Open "Text Explorer"

