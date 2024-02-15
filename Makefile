install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_hlw.py

format:
	black *.py

lint:
	pylint --disable=R,C hlw.py

all: install lint test