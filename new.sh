# Ensure we are in the project root
cd /Users/shreyaroshan/StudioProjects/lab4

# Move the dart files from lib to the lab4 folder
# Based on your requirement to have them in the 'lab4' folder on GitHub
mv lib/q1.dart lab4/
mv lib/q2.dart lab4/
mv lib/q4.dart lab4/

# Remove the lib folder as requested
rm -rf lib

# Stage the changes (including the deletion of lib)
git add .

# Commit the changes
git commit -m "Move lab4 dart files and remove lib folder"

# Pull remote changes to sync
git pull origin main --rebase --allow-unrelated-histories

# Push to the remote repository
git push origin main
