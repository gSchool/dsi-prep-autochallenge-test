FROM python:3.8

# makes DIR and CD into it
WORKDIR /app 

ARG SUBMISSION_SUBFOLDER
COPY $SUBMISSION_SUBFOLDER ./

COPY test.py ./
COPY test.sh ./
COPY images/ ./images/

RUN pip install matplotlib
RUN pip install numpy
RUN pip install Pillow
