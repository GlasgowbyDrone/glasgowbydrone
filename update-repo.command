#!/bin/bash
cd "$(dirname "$0")"
echo "Enter a commit message:"
read commitMessage
git add .
git commit -m "$commitMessage"
git pull origin main --rebase
git push origin main
open "https://glasgowbydrone.github.io/glasgowbydrone/"
