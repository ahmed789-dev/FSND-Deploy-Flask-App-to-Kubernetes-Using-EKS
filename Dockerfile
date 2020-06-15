FROM python:stretch

COPY . /app
WORKDIR /app

#ENV JWT_SECRET="myjwtsecret" \
#    LOG_LEVEL=DEBUG


RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install flask
#RUN pip install pytest
RUN pip install jwt
RUN pip install gunicorn
#RUN pip install fcntl

#ENTRYPOINT ["python","main.py"]

ENTRYPOINT ["gunicorn","-b",":8080","main:APP"]


