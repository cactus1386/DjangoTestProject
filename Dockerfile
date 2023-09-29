FROM python:3.11

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONNUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY ./core /app