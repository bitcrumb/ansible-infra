install:
	brew install python
	pip3 install --user --upgrade ansible pre-commit yamllint
	pre-commit install
	ansible all -m ping
