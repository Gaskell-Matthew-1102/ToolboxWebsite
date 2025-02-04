#!/bin/sh

cd /app/server
waitress-serve 'flaskr:app' &

cd /app/client
npm run dev
