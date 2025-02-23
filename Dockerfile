FROM quay.io/fedora/python-310
WORKDIR /tmp

COPY . /tmp

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED=1
ENV PYTHONIOENCODING=UTF-8

ENV GRADIO_SERVER_PORT=8080
ENV GRADIO_SERVER_NAME=0.0.0.0

EXPOSE 8080

ENTRYPOINT ["python"]
CMD ["app.py"]
