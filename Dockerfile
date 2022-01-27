FROM python:3.7.12-slim-buster

RUN apt-get update && apt-get install -y build-essential libz3-dev libgmp3-dev libboost-all-dev python3.7-dev libfmt-dev curl

# Get Rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV VIRTUAL_ENV=/opt/venv
ENV CARGO_ENV=/root/.cargo
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH=$VIRTUAL_ENV/bin:$PATH:$CARGO_ENV/bin:$PATH

COPY . .
RUN pip install poetry && \
    make test_semantics
