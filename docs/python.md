# Python

* [./Software Engineering](./software-engineering.md)
* [andornaut@github /python-cli-app](https://github.com/andornaut/python-cli-app)
* [Documentation](https://docs.python.org/)
* [PyPI](https://pypi.org/) - The Python Package Index

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
[Click](https://github.com/pallets/click/) | A composable command line interface toolkit
[DeviPi](https://github.com/devpi/devpi)| Python PyPi staging server and packaging, testing, release tool
[pytest](https://docs.pytest.org/en/) | A framework that makes it easy to write small, readable tests
[Typer](https://github.com/tiangolo/typer) | Build great CLIs. Easy to code. Based on Python type hints.

## Tools

Name | Description
--- | ---
[Black Formatter for VS Code](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter) | Support the [black formatter](https://github.com/psf/black)
[Python for VS Code](https://marketplace.visualstudio.com/items?itemName=ms-python.python) | Support intelliSense, linting, debugging, code navigation, code formatting, etc
[Python Test Explorer](https://code.visualstudio.com/docs/python/testing) | Run Python tests within the [Test Explorer UI](https://marketplace.visualstudio.com/items?itemName=hbenl.vscode-test-explorer)

## Workarounds

### VS Code test discovery doesn't find any tests

This only occurs when starting VS Code from a terminal that already has an active virtualenv (eg. after running `pipenv shell`).

1. CTRL+Shift+P
1. Select "Python: Select Interpreter"
1. Select the correct interpreter
1. Open "Text Explorer"

