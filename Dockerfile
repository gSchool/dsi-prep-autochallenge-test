# Start from the official python image: https://hub.docker.com/_/python
FROM python:3.8

# Makes directory and changes working directory to it
WORKDIR /app

# Installs packages needed for running test.py
COPY test_requirements.txt ./
RUN pip install --no-cache-dir -r test_requirements.txt

# Student code from the URL submitted in Learn
ARG SUBMISSION_SUBFOLDER
# Any source changes will rebuild all the following layers
COPY $SUBMISSION_SUBFOLDER ./

# Overwrite anything that the student shouldn't touch
COPY test.py ./
COPY images/ ./images/

# Always overwrite the test script that Learn will run
COPY test.sh ./
