# This script creates a gitconfig file and copies over additional git settings

# http://stackoverflow.com/questions/10565877/how-to-replace-two-things-at-once-with-sed
# writing name and email to gitconfig
# http://stackoverflow.com/questions/17957196/using-variables-in-bash-script-to-set-ini-file-values-while-executing
# sed "/^number=/s/=.*/=5/" baseinput.ini > input.ini

# Add user's github info to gitconfig
sed -e s/github_name/"$github_name"/ -e \s/github_email/"$github_email"/ $source_dir/settings/git/gitconfig > ~/.gitconfig

# copying gitignore global and commit template
cp ../settings/git/gitconfig        ~/.gitconfig
cp ../settings/git/gitignore_global ~/.gitignore_global
cp ../settings/git/gitmessage.txt   ~/.gitmessage.txt

# # Add user's github info to gitconfig
# # PL: more readable?
# echo -e "[user]
#   name = $github_name
#   email = $github_email
# $(cat ~/.gitconfig)" > ~/.gitconfig
