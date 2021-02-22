install_requirements:
	@pip install -r requirements.txt

install:
	@pip install .

install_dev:
	@pip install -e .

uninstall:
	@pip install -y toto

test:
	@coverage run -m pytest tests/*.py
	@coverage report -m --omit=$(VIRTUAL_ENV)/lib/python*

clean:
	@rm -f */version.txt
	@rm -f .coverage
	@rm -Rf */__pycache__
	@rm -Rf */*.pyc

all: install_requirements install test