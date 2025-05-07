# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask will run on
EXPOSE 1000

# Start the app with gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:1000", "app:app"]
