### Better bash history behavior
HISTCONTROL=erasedups
export HISTFILESIZE=
export HISTSIZE=
HISTTIMEFORMAT="%Y%m%dT%H%M%S "
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

### Prevent accidentally rebooting the host.
reboot() {
        printf '\nDid you mean to run that command on the host node $HOSTNAME?\nIf so, run: `/usr/sbin/reboot`\n\n'
}

shutdown() {
        printf '\nDid you mean to run that command on the host node $HOSTNAME?\nIf so, run: `/usr/sbin/shutdown`\n\n'
}

poweroff() {
        printf '\nDid you mean to run that command on the host node $HOSTNAME?\nIf so, run: `/usr/sbin/poweroff`\n\n'
}
