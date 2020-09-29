FROM python:3.7-alpine
MAINTAINER Svilen Dyakovski

# env variables
ENV PYTHONUNBUFFERED 1

# Install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# add limited rights user
RUN adduser -D user
USER user
