FROM python:3.9

COPY ["./webapp", "/app"]

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 80

ENTRYPOINT ["python"]

CMD ["app.py"]