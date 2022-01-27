#!/bin/bash
cd /home/ubuntu/warp-temporary
python -m venv venv
source venv/bin/activate
source /root/.cargo/env
pip install poetry
poetry run make test_semantics
