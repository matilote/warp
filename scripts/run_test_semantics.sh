#!/bin/bash
cd /home/ubuntu/warp-temporary
python3.7 -m venv venv
source venv/bin/activate
source /root/.cargo/env
pip install --upgrade pip setuptools wheel
pip install poetry
poetry run make test_semantics
