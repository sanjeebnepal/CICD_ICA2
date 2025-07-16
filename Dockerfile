FROM python:3.11-slim

# Copy requirements first for caching
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy app and tests
COPY main.py .
COPY test_main.py .

EXPOSE 8080

CMD ["python", "main.py"]
