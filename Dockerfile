# Download base image python:3.5
FROM python:3.5
MAINTAINER Udlei Nati <udlei@protonmail.ch>

RUN groupadd celery && useradd --shell /bin/bash --create-home --home-dir /home/celery -g celery celery
WORKDIR /home/celery

RUN pip install celery=="4.0.2"
RUN pip install redis=="2.10.5"
RUN pip install flower=="0.9.1"

COPY flowerconfig.py flowerconfig.py

USER celery
CMD ["celery", "flower"]
