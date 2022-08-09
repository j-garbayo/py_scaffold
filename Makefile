# This is a cooment
install:
	pip install --upgrade pip
		pip install -r requirements.txt

install-azure:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt
# This is another comment
# And yet another comment
format:
	black *.py
	
lint:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv --cov=hello test_hello.py
	
all: install lint test