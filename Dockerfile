# Use the official Python stable image as base
FROM python:stable AS backend

# Set up working directory for Flask app
WORKDIR /app

# Install Flask, Waitress, and other dependencies for Flask
COPY server/requirements.txt /app/server/requirements.txt
RUN pip install --no-cache-dir -r /app/server/requirements.txt

# Set environment variable for Flask to point to the run.py file
ENV FLASK_APP=server.run

# Now set up Node.js for the Vue.js app
FROM node:lts AS frontend

# Set up the working directory for the Vue.js app
WORKDIR /app/client
COPY client/package.json client/package-lock.json ./
RUN npm install

# Copy the entire project to the container
COPY . /app/

# Expose ports for Flask and Vue.js
EXPOSE 8080 10000

# Set up a script to run both services concurrently
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh

# Command to run both Flask and Vue.js
CMD ["/app/run.sh"]
