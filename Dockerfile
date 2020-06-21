FROM python:stretch

COPY . /app
WORKDIR /app

#ENV JWT_SECRET="myjwtsecret" \
#    LOG_LEVEL=DEBUG


RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install flask
RUN pip install jwt
RUN pip install gunicorn

#ENTRYPOINT ["python","main.py"]

ENTRYPOINT ["gunicorn","-b",":8080","main:APP"]


