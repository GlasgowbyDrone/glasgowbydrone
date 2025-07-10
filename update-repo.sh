#!/bin/bash

echo "🔄 Staging all changes..."
git add .

echo "✍️  Committing with default message..."
git commit -m "Full repo update from VS Code"

echo "⬇️  Rebasing with origin/main..."
git pull origin main --rebase

echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Repo successfully updated!"
