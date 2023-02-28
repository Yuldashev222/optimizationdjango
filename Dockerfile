FROM python:3.10-alpine3.16

COPY requirements.txt /temp/requirements.txt
COPY src /src

WORKDIR /src

EXPOSE 8000

RUN apk add postgresql-client build-base postgresql-dev
RUN pip install -r /temp/requirements.txt
RUN adduser --disabled-password srcuser

USER srcuser
