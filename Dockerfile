FROM python:3.10-slim-buster

WORKDIR /app

COPY requierments.txt requierments.txt

RUN pip3 install -r requierments.txt

COPY . .

CMD [ "python3", "manage.py", "runserver","0.0.0.0:8000"]