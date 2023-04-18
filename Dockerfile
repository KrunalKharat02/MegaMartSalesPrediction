FROM python:3.10-slim

COPY . .

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get -y install curl
RUN apt-get install libgomp1

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "application.py"]
