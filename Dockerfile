# Expose ports for Flask and Vue.js
EXPOSE 8080 10000

# Use the official Python stable image as base
FROM python:stable AS backend

# Set up working directory for Flask app
WORKDIR /backend

# Install Flask, Waitress, and other dependencies for Flask. and run it
COPY server/ /backend/
RUN pip install --no-cache-dir -r /backend/requirements.txt
CMD ["python3", "/backend/run.py"]

# Now set up Node.js for the Vue.js app
FROM node:lts AS frontend

# Set up the working directory for the Vue.js app
WORKDIR /frontend
COPY client/ /frontend/
RUN npm install

# Command to run both Flask and Vue.js
CMD ["npm", "run", "dev"]
