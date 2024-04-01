# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Install any needed packages specified in requirements.txt
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app

# Make sure the initialization script is executable
COPY init_db.sh /app/
RUN chmod +x /app/init_db.sh

# Make port 5000 available to the world outside this container
EXPOSE 3000

# Define environment variable for Flask application
ENV FLASK_APP=app.py

# Use the initialization script to start the app
ENTRYPOINT ["/app/init_db.sh"]
