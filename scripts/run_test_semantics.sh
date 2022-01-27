#!/bin/bash
source $HOME/.cargo/env
cd /home/ubuntu/warp-temporary
python -m venv venv
source venv/bin/activate
pip install poetry
poetry run make test_semantics
