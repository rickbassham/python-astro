FROM python:3.8

RUN mkdir /build
WORKDIR /build

RUN pip install --upgrade pip pipenv

COPY Pipfile /build
COPY Pipfile.lock /build

RUN pipenv install --system --dev --deploy
