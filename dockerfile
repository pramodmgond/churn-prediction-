#dockerfile , image, container
FROM python:3.9-slim

EXPOSE 8080


WORKDIR /HACKATHON

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

ENTRYPOINT [ "streamlit","run","sampleapp.py","--server.port=8080","--server.address=0.0.0.0" ]

CMD ["python", "./sampleapp.py"]