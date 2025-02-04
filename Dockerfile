# Start with Python stable image for the Flask backend
FROM python:stable AS backend

# Set up the backend (Flask)
WORKDIR /app/server

# Install dependencies for Flask
COPY server/requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Set up the frontend (Vue.js)
FROM node:lts AS frontend

# Set up Vue.js in the frontend directory
WORKDIR /app/client
COPY client/package.json client/package-lock.json ./
RUN npm install

# Copy the whole project to the container
COPY . /app/

# Expose ports for Flask and Vue.js
EXPOSE 8080 10000

# Set up a script to run both services concurrently
COPY run.sh /app/run.sh
RUN chmod +x /app/run.sh

# Command to run both Flask and Vue.js
CMD ["/app/run.sh"]
