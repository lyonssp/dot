### Bash ###

# Command Prompt
export PROMPT='%F{green}%n%f %B%~%b $ '        # set the prompt to display the current directory

# Command preferences
alias h=history                     # show the history of commands issued
alias grep='grep --color'

# Remove all local branches that have been merged
prune_merged_branches() {
	git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d
}

### Go ###
export PATH=$PATH:$HOME/go/bin

### OSX ###

alias rm='trash'

# Copy from file to clipboard on OSX
clip_copy() {
  pbcopy < $1
}

