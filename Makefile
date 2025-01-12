.PHONY: setup install run clean

# Python executable
PYTHON := python3
VENV := env

ensure-env:
	@$(PYTHON) -m venv $(VENV)
	@$(VENV)/bin/pip install --upgrade pip

ensure-deps: ensure-env
	@$(VENV)/bin/pip install -r requirements.txt

run: ensure-deps
	$(VENV)/bin/python main.py
