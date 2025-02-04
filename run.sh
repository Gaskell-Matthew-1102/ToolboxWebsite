#!/bin/sh

cd /app/server
python run.py &

cd /app/client
npm run dev
