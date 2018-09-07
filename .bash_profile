# Run Java 8 by default
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Path appends
## Pip executables
export PATH=/Users/seanlyons/Library/Python/3.6/bin:$PATH

## golang
export GOPATH=$(go env GOPATH)
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH
alias gohome='cd $GOPATH'

#Utilities
pidof() {
	ps axc|awk "{if (\$5==\"$1\") print \$1}";
}

# Command Prompt
PS1='(\u)(\t): \w $ '        # set the prompt to display the current directory

# Convenience aliases
alias h=history                     # show the history of commands issued
alias grep='grep --color'
alias rm='trash'

# MacPorts Installer addition on 2016-02-16_at_16:39:53: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Copy from file to clipboard
clip_copy() {
	pbcopy < $1
}

# Chef
export EDITOR=vim

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

sbtgen() {
	#!/bin/sh
	mkdir -p src/{main,test}/{java,resources,scala}
	mkdir lib project target

	# create an initial build.sbt file
	echo 'name := "MyProject"

	version := "1.0"

	scalaVersion := "2.12.1"' > build.sbt
}

# Shhh
secrets() {
	#!/bin/sh
	cat ~/Documents/.ignoreme	
}

# The Agenda
todo() {
    #!/bin/sh
    cat ~/Documents/TODO
}

# Target .env files to export KEY=value as 'export KEY=value'
setenv() {
	set -a
	source $1
	set +a
}

prune_merged_branches() {
	git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d
}

itops_ssh() {
    ssh -i ~/.ssh/itops.pem ubuntu@$1
}
