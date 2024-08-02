FROM ubuntu:latest

# Set the working directory in the image
WORKDIR /app

# Copy the files from the host file system to the image file system
COPY . /app

# Install the necessary packages
RUN apt-get update && apt-get install -y python3 python3-pip

# Set environment variables
ENV NAME World

# Install Flask
RUN pip3 install Flask

# Expose the port your application will run on
EXPOSE 8080

# Run a command to start the application
CMD ["python3", "app.py"]
