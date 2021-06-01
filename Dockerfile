FROM python:3.8

ADD test.py .
ADD images ./images
ADD test.sh .

RUN pip install matplotlib
RUN pip install numpy
RUN pip install Pillow
CMD ["python", "./test.py"]
