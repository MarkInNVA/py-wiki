install:
	# install commands
	pip install --upgrade pip &&\
	pip install -r requirements.txt
format:
	# format code - Black
	black *.py mylib/*.py
lint:
	# lint code - flake8 or pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	# test code - pytest
	python -m pytest -vv test_*.py
deploy:
	# deploy code

all: install #format lint test
#all: install format lint test deploy	