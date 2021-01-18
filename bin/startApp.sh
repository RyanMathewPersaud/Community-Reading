#!/bin/bash
set -e
echo ">>> Go into frontend folder"
cd /app/frontend
npm install
npm run build
cd ..
echo ">>> Go into server folder"
cd /app/server
go run server.go