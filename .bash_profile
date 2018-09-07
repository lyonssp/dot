# Path appends
## Pip executables
export PATH=/Users/seanlyons/Library/Python/3.6/bin:$PATH

# Command Prompt
PS1='(\u)(\t): \w $ '        # set the prompt to display the current directory

## golang
export GOPATH=$(go env GOPATH)
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH
alias gohome='cd $GOPATH'

# Convenience aliases
alias h=history                     # show the history of commands issued
alias grep='grep --color'
alias rm='trash'

### Convenient commands
# Copy from file to clipboard on OSX
clip_copy() {
	pbcopy < $1
}

# Generate basic scaffolding for an SBT project
sbtgen() {
	#!/bin/sh
	mkdir -p src/{main,test}/{java,resources,scala}
	mkdir lib project target

	# create an initial build.sbt file
	echo 'name := "TODO"

	version := "TODO"

	scalaVersion := "2.12.1"' > build.sbt
}

# The Agenda
todo() {
    #!/bin/sh
    cat ~/Documents/TODO
}

# Remove all local branches that have been merged
prune_merged_branches() {
	git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d
}
