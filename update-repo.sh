#!/bin/bash

echo ""
echo "📌 Enter your commit message:"
read commit_message

echo "🔄 Staging all changes..."
git add .

echo "✍️ Committing..."
git commit -m "$commit_message"

echo "⬇️ Rebasing with remote..."
git pull origin main --rebase

echo "🚀 Pushing to GitHub..."
git push origin main

echo "🌐 Opening live site..."
open "https://glasgowbydrone.github.io/glasgowbydrone/"

echo "✅ Done! Repo updated and site live."
