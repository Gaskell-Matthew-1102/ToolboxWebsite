# 1. Build Stage for the Vue.js Frontend
FROM node:lts-alpine AS frontend-build

WORKDIR /frontend

# Install dependencies and build the Vue.js app
COPY client/package*.json ./
RUN npm install

COPY client/ .
RUN npm run build

# 2. Build Stage for the Flask Backend
FROM python:alpine AS backend-build

WORKDIR /backend

# Install Python dependencies
COPY server/requirements.txt ./
RUN pip install -r requirements.txt

COPY server/ .

# 3. Final Stage: Serve the Vue.js and Flask App
FROM nginx:alpine

# Set up Nginx to serve the Vue.js app
COPY --from=frontend-build /frontend/dist /usr/share/nginx/html

# Copy the Flask backend to the container
COPY --from=backend-build /backend /backend

# Expose port 10000
EXPOSE 10000

# Start both services (Flask and Nginx) on port 10000
CMD ["sh", "-c", "flask run --host=0.0.0.0 --port=10000 & nginx -g 'daemon off;'"]
