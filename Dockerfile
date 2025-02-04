# Use the official Python stable image as base for the backend
FROM python:stable AS backend

# Set up working directory for Flask app
WORKDIR /backend

# Copy Flask server files into the container
COPY server/ /backend/

# Install Flask, Waitress, and other dependencies for Flask
RUN pip install --no-cache-dir -r /backend/requirements.txt

# Now set up Node.js for the Vue.js app
FROM node:lts AS frontend

# Set up the working directory for the Vue.js app
WORKDIR /frontend

# Copy Vue client files into the container
COPY client/ /frontend/

# Install Vue.js dependencies
RUN npm install

# reimport stuff bc idgaf
WORKDIR /backend
COPY server/ /backend/

# Expose ports for Flask and Vue.js
EXPOSE 8080 10000

# Use a shell command to run both Flask and Vue.js concurrently
CMD cd /backend && python3 run.py & cd /frontend && npm run dev
