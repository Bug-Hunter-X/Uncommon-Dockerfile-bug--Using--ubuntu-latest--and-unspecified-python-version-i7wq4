FROM ubuntu:20.04
RUN apt-get update && apt-get install -y python3.8 python3.8-pip
COPY requirements.txt .
RUN pip3.8 install -r requirements.txt
COPY . .
CMD ["python3.8", "./app.py"]