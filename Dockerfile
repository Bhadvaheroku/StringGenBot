# Use the official Python image from Docker Hub
FROM python:latest

# Update and upgrade system packages
RUN apt-get update -y && apt-get upgrade -y

# Upgrade pip
RUN pip3 install -U pip

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install dependencies from requirements.txt
RUN pip3 install -U -r requirements.txt

# Command to run the application
CMD ["bash", "start"]
