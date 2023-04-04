FROM python:3.10.7-slim-buster

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#install system dependencies
RUN apt-get update && apt-get install -y netcat 

#install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /usr/src/app/requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . /usr/src/app/

ENTRYPOINT ["usr/src/app/entrypoint.sh"]
