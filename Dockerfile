FROM python:3.12

ENV GRADIO_SERVER_NAME=127.0.0.1
ENV PIP_BREAK_SYSTEM_PACKAGES=1

WORKDIR /facefusion

RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install ffmpeg -y

COPY . /facefusion

RUN python install.py --onnxruntime default --skip-conda
