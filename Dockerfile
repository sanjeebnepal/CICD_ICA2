FROM python:3.11-slim

# Install Flask
RUN pip install flask

# Copy app files
COPY main.py .
COPY test_main.py .

# Expose port 80
EXPOSE 80

# Run the app
CMD ["python", "main.py"]
