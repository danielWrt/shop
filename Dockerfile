FROM python:3.9-alpine
FROM ubuntu

WORKDIR /

COPY . .

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt install -y python3-pip
RUN pip install --upgrade pip
RUN pip install wheel gunicorn
RUN pip install -r req.txt

ENV SECRET_KEY=-@jy)oc4uab0o)qgde5f+1k_ww%!#vmk5*ut4zh1bh&x#aa^!-
ENV DB_NAME=railway
ENV DB_USER=postgres
ENV DB_PASSWORD=yzSyZjrxA9tNc9B0DgqX
ENV DB_HOST=containers-us-west-172.railway.app
ENV DB_PORT=5725
ENV DEBUG=1
ENV ALLOWED_HOSTS=127.0.0.1,localhost

CMD gunicorn --bind 0.0.0.0:8000 config.wsgi:application