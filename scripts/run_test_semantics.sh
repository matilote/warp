#!/bin/bash
python -m venv venv
source venv/bin/activate
pip install poetry
poetry run make test_semantics
