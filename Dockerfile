# https://pythonspeed.com/articles/activate-virtualenv-dockerfile/
FROM python:3.8-slim-buster

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRUAL_ENV/bin:$PATH"

WORKDIR /code

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY src/ .
CMD ["python", "app.py"]

