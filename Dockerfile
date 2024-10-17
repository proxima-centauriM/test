# Use the official python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application code and requirements file into the container
COPY app.py requirements.txt /app/
COPY templates /app/templates

# Install dependencies
RUN pip install --no-cache-dir -r requirements

# Expose the port that the flask will run on
EXPOSE 5000

# Start the Flask app
CMD ["python", "app.py"]