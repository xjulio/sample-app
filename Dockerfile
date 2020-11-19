FROM alpine

RUN apk add python3 && apk add py-pip

COPY requirements.txt /app/


ENV APP_PORT=8080

COPY ./app.py /app/
COPY ./templates /app/templates/ 
COPY ./static /app/templates/ 

WORKDIR /app

RUN pip install -r requirements.txt

CMD python3 app.py
