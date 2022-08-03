FROM python:3-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
COPY tests /tests
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "pytest", "/tests" ]
