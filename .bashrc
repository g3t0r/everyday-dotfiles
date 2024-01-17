# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

export EDITOR=nvim

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
alias config='/usr/bin/git --git-dir=/home/jan/.cfg/ --work-tree=/home/jan'

export QSYS_ROOTDIR="/home/jan/Software/quartus/intelFPGA_lite/22.1std/quartus/sopc_builder/bin"

export NVM_DIR="$HOME/.nvm"

export PAGER=less
export LESS=R

source "$HOME/.aliases"
export PS1="\u@\h:[\W]:> \[$(tput sgr0)\]"

eval $(keychain --eval --quiet github)


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/jan/Software/google-cloud-cli-412.0.0-linux-x86_64/google-cloud-sdk/path.bash.inc' ]; then . '/home/jan/Software/google-cloud-cli-412.0.0-linux-x86_64/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/jan/Software/google-cloud-cli-412.0.0-linux-x86_64/google-cloud-sdk/completion.bash.inc' ]; then . '/home/jan/Software/google-cloud-cli-412.0.0-linux-x86_64/google-cloud-sdk/completion.bash.inc'; fi
