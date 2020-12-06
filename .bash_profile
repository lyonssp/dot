### Bash ###

# Command Prompt
export PS1='(\u)(\t): \w $ '        # set the prompt to display the current directory

# Command preferences
alias h=history                     # show the history of commands issued
alias grep='grep --color'

### Git ###

# aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.st status

# Remove all local branches that have been merged
prune_merged_branches() {
	git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d
}

### OSX ###

# alias rm='trash'

# Copy from file to clipboard on OSX
# clip_copy() {
#   pbcopy < $1
# }

