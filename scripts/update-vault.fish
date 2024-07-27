#!/usr/bin/env fish

# Navigate to your sinh-x-blog project directory
cd /home/sinh/git-repos/sinh_x/sinh_x-blog/

# Copy the updated files from your Obsidian vault to your project's vault directory
cp -R ~/Documents/Sinh-organized/Areas/Stories/* ./vault/Stories/

# Add the updated files to Git
git add ./vault/

# Check if there are changes
set changes (git diff --cached --quiet; echo $status)

if test (count $changes) -gt 0
  # Add the updated files to Git
  git add ./vault/Stories/

  # Get the current date and time
  set timestamp (date '+%Y-%m-%d %H:%M')

  # Commit the changes with a message that includes the timestamp
  git commit -m "Update vault: $timestamp"

  # Push the commit to GitHub
  git push origin main
end
