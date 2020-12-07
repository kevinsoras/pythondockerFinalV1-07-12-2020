FROM alpine:3.10

# nuevo
# instalando dependencias
RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip    



# estableciendo direcetorio de trabajo
WORKDIR /usr/src/app


# agregando app
COPY . /usr/src/app

RUN pip 3 --no-cache-dir install -r requiremenents.txt
# nuevo
# ejecutar server
CMD ["python3","/usr/src/app/app.py"]
#asdas