# FROM ubuntu:latest
# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the image
WORKDIR /app

# Copy the files from the host file system to the image file system
COPY . /app

# # Install the necessary packages
# RUN apt-get update && apt-get install -y python3 python3-pip
# Install Flask
RUN pip install --no-cache-dir Flask

# Set environment variables
ENV NAME World

# Expose the port your application will run on
EXPOSE 8080

# Run a command to start the application
CMD ["python3", "app.py"]
