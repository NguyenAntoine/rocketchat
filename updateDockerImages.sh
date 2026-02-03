#!/bin/bash
set -e

echo "Stopping Rocket.Chat..."
docker compose down

echo "Pulling latest images..."
docker compose pull

echo "Starting Rocket.Chat..."
docker compose up -d

echo "Waiting for services to be ready..."
sleep 10

echo "Checking status..."
docker compose exec -T rocketchat echo "Rocket.Chat is running" || echo "Rocket.Chat is starting, please wait..."

echo "Update complete!"
