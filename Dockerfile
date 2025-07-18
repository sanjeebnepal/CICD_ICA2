FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first for caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY main.py .

# Copy tests directory (unit + integration)
COPY tests/ tests/

# Expose port for Flask app
EXPOSE 8080

# Default command to run the app
CMD ["python", "main.py"]
