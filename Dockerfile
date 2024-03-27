FROM python:3.8-slim-buster

WORKDIR /python-docker

RUN pip install gunicorn

COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["gunicorn", "-b", "0.0.0.0:5000", "nombre_de_tu_app:app"]
