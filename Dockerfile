FROM python:3.11-alpine
WORKDIR /app
RUN apk add --no-cache gcc musl-dev libpq-dev
COPY . /app
RUN pip install --no-cache-dir flask psycopg2
CMD ["python", "app.py"]
