install:
	# install commands
	pip install --upgrade pip &&\
	pip install -r requirements.txt

post-install:
	python -m textblob.download_corpora

format:
	# format code - Black
	black *.py mylib/*.py
lint:
	# lint code - flake8 or pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	# test code - pytest
	python -m pytest -vv --cov=mylib --cov=main test_*.py

build:
	# build container
	docker build -t deploy-fastapi .
run:
	# run above Docker container
	docker rm deploy-fastapi
	docker run -p 127.0.0.1:8080:8080 --name deploy-fastapi deploy-fastapi
# deploy:
	# deploy code

all: install post-install format lint test
check: format lint test
#all: install format lint test deploy	