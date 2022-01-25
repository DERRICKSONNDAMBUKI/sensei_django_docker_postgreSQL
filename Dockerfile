# pull base image
FROM python:3.10

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONNUNBUFFERED 1

# set working directory

WORKDIR /postgresql_project/

# install dependencies

COPY Pipfile Pipfile.lock /postgresql_project/

RUN pip install pipenv && pipenv install --system

# copy project

COPY . /postgresql_project/

# $ docker build .