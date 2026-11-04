FROM python:3.9

WORKDIR /app

COPY ./requirements.txt requirements.txt

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . .

CMD ["gunicorn", "app:app", "-b", "0.0.0.0:7860"]