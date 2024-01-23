#!/bin/bash
# GIVE THE FILE THE PROPER PERMISSIONS: chmod +x install-all.sh

# Navigate to the parent folder
cd "C:\Users\lenovo\Desktop\Programming\Componies\CloudLink\Internship\Next real project"

# Loop through each child folder in the "FCN4U_BackEnd-Intern" directory
for folder in FCN4U_BackEnd-Intern/*; do
  if [ -d "$folder" ]; then
    # Check if package.json exists in the folder
    if [ -f "$folder/package.json" ]; then
      echo "Installing npm packages in $folder"
      (cd "$folder" && npm install)

      # Create .gitignore file with specified content
      echo "# Node modules folder" > "$folder/.gitignore"
      echo "node_modules" >> "$folder/.gitignore"
      echo "" >> "$folder/.gitignore"
      echo "# Project side notes folder" >> "$folder/.gitignore"
      echo "Notes" >> "$folder/.gitignore"
      
      echo ".gitignore created in $folder"
    else
      echo "No package.json found in $folder. Skipping npm install and .gitignore creation."
    fi
  fi
done


