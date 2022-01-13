venv/:
	python3 -m venv venv

venv/bin/mypy: venv/
	venv/bin/pip install -r requirements.txt

test: venv/bin/mypy
	mypy ./test_mypy/file.py
