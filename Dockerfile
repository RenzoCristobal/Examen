FROM python:3.8-slim-buster

WORKDIR /python-docker
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir gunicorn && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3", "gunicorn", "--workers=4", "--bind", "0.0.0.0:5000", "app:app"]

