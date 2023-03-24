FROM python:3.10.6-slim-buster

COPY ./requirements.txt /requirements.txt

RUN chmod +x /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir -p /app
COPY . /app
WORKDIR /app/

CMD ["python", "main.py"]