FROM python:3.9-slim-buster

WORKDIR /code

COPY . .

RUN pip install -r requirements.txt

CMD ["gunicorn", "-b", "0.0.0.0:8000", "look.app"]

EXPOSE 8000