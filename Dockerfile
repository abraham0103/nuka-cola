FROM python:3.9

ENV PYTHONUNBUFFERED True

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN pip install -r requirements.txt
# CMD exec gunicorn --bind :8091 --workers 1 --threads 8 --timeout 0 main:app
CMD exec gunicorn --bind :$PORT_NUKA --workers 1 --threads 8 --timeout 0 main:app
