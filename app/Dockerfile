FROM python:3.7.7-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

RUN apt update && apt install curl -y

COPY *.py ./

EXPOSE 8080

CMD ["python", "app.py", "8080"]