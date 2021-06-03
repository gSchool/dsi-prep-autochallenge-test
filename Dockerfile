FROM python:3.8

RUN mkdir /app

WORKDIR /app

ARG SUBMISSION_SUBFOLDER
ADD $SUBMISSION_SUBFOLDER /app

ADD test.py /app
ADD test.sh /app
COPY images/ /app/images/

RUN pip install matplotlib
RUN pip install numpy
RUN pip install Pillow
