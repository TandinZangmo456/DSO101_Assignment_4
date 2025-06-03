# Use official base image
FROM python:3.10-slim

# Create non-root user
RUN useradd -m appuser
USER appuser

# Set working directory
WORKDIR /home/appuser

# Copy files and install dependencies
COPY --chown=appuser:appuser requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY --chown=appuser:appuser app/ ./app

CMD ["python", "app/main.py"]
