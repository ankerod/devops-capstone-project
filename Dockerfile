FROM python:alpine

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "fastapi", "run", "main.py", "--host", "0.0.0.0", "--port", "8000"]
