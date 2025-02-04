# Use the official Python stable image as base
FROM python:stable AS backend

# Set up working directory for Flask app
WORKDIR /backend

# Install Flask, Waitress, and other dependencies for Flask. and run it
COPY server/ /backend/
RUN pip install --no-cache-dir -r /backend/requirements.txt

# Now set up Node.js for the Vue.js app
FROM node:lts AS frontend

# Set up the working directory for the Vue.js app
WORKDIR /frontend
COPY client/ /frontend/
RUN npm install

# Expose ports for Flask and Vue.js
EXPOSE 8080 10000

# Command to run both Flask and Vue.js
CMD ["python3 /backend/run.py && cd /frontend && npm run dev"]
