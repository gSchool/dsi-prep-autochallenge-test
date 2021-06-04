FROM python:3.8

# Makes directory and changes working directory to it
WORKDIR /app

# Installs packages needed for running test.py
RUN pip install matplotlib
RUN pip install numpy
RUN pip install Pillow

# Student submission from Learn
ARG SUBMISSION_SUBFOLDER
COPY $SUBMISSION_SUBFOLDER ./

# Anything from here on needs to be rebuilt
COPY test.py ./
COPY test.sh ./
COPY images/ ./images/
