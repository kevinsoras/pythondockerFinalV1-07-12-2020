FROM alpine:3.10

# nuevo
# instalando dependencias
RUN apk update && \
    apk add --virtual build-deps gcc python3-dev musl-dev && \
    apk add postgresql-dev && \
    apk add netcat-openbsd && \
    pip3 install --upgrade pip 



# estableciendo direcetorio de trabajo
WORKDIR /usr/src/app


# agregando app
COPY . /usr/src/app

# nuevo
# ejecutar server
CMD ["python3","/usr/src/app/app.py"]
#asdas