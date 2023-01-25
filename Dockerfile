FROM python:3.9-slim-buster
RUN apt-get update && apt-get install -y nginx
ENV PYTHONUNBUFFERED 1
WORKDIR /code

COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/

EXPOSE 80
COPY . /usr/share/nginx/html