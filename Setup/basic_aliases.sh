#! /usr/bin/bash

# create a bash alias
if [ ! -f ~/.bash_aliases ]; then
    touch ~/.bash_aliases
fi

#ls aliases
if grep -q "# ls" ~/.bash_aliases; then
    echo "alias for ls already exists"
else
    echo '' >> ~/.bash_aliases
    echo '# ls' >> ~/.bash_aliases
    echo '## Colorize the ls output ##' >> ~/.bash_aliases
    echo 'alias ls="ls --color=auto"' >> ~/.bash_aliases
    echo '## Use a long listing format ##' >> ~/.bash_aliases
    echo 'alias ll="ls -la"' >> ~/.bash_aliases
    echo '## Show hidden files ##' >> ~/.bash_aliases
    echo 'alias l.="ls -d .* --color=auto"' >> ~/.bash_aliases
fi

#cd aliases
if grep -q "# cd" ~/.bash_aliases; then
    echo "alias for cd already exists"
else
    echo '' >> ~/.bash_aliases
    echo '# cd' >> ~/.bash_aliases
    echo '## Go back ##' >> ~/.bash_aliases
    echo 'alias ..="cd .."' >> ~/.bash_aliases
    echo '## Go back twice ##' >> ~/.bash_aliases
    echo 'alias ...="cd ../.."' >> ~/.bash_aliases
    echo 'alias .2="cd ../.."' >> ~/.bash_aliases
    echo '## Go back thrice ##' >> ~/.bash_aliases
    echo 'alias ....="cd ../../.."' >> ~/.bash_aliases
    echo 'alias .3="cd ../../.."' >> ~/.bash_aliases
    echo '## Go back four times ##' >> ~/.bash_aliases
    echo 'alias .....="cd ../../../.."' >> ~/.bash_aliases
    echo 'alias .4="cd ../../../.."' >> ~/.bash_aliases
    echo '## Go back five times ##' >> ~/.bash_aliases
    echo 'alias ......="cd ../../../../.."' >> ~/.bash_aliases
    echo 'alias .5="cd ../../../../.."' >> ~/.bash_aliases
fi

#system info aliases
if grep -q "# system info" ~/.bash_aliases; then
    echo "alias for system info already exists"
else
    echo '' >> ~/.bash_aliases
    echo '# system info' >> ~/.bash_aliases
    echo '## Show memory space ##' >> ~/.bash_aliases
    echo 'alias meminfo="free -m -l -t"' >> ~/.bash_aliases
    echo '## Show disk space ##' >> ~/.bash_aliases
    echo 'alias diskinfo="df -h"' >> ~/.bash_aliases
    echo '## Show disk space, all file systems ##' >> ~/.bash_aliases
    echo 'alias diskinfoall="df -a -h"' >> ~/.bash_aliases
    echo '## Show top process eating memory ##' >> ~/.bash_aliases
    echo 'alias psmem="ps auxf | sort -nr -k 4"' >> ~/.bash_aliases
    echo 'alias psmem10="ps auxf | sort -nr -k 4 | head -10"' >> ~/.bash_aliases
    echo '## Show top process eating cpu ##' >> ~/.bash_aliases
    echo 'alias pscpu="ps auxf | sort -nr -k 3"' >> ~/.bash_aliases
    echo 'alias pscpu10="ps auxf | sort -nr -k 3 | head -10"' >> ~/.bash_aliases
    echo '## Get server cpu info ##' >> ~/.bash_aliases
    echo 'alias cpuinfo="lscpu"' >> ~/.bash_aliases
fi

#location aliases
if grep -q "# location" ~/.bash_aliases; then
    echo "alias for location already exists"
else
    echo '' >> ~/.bash_aliases
    echo '# location' >> ~/.bash_aliases
    echo '## Get current path ##' >> ~/.bash_aliases
    echo 'alias whereami="pwd"' >> ~/.bash_aliases
    echo '## Go to dev ##' >> ~/.bash_aliases
    echo 'alias dev="cd ~/Dev"' >> ~/.bash_aliases
    echo '## Go to home ##' >> ~/.bash_aliases
    echo 'alias home="cd ~"' >> ~/.bash_aliases
    echo '## Go to root ##' >> ~/.bash_aliases
    echo 'alias root="cd /"' >> ~/.bash_aliases
    echo '## Go to workysetup ##' >> ~/.bash_aliases
    echo 'alias workysetup="cd ~/Dev/workysetup"' >> ~/.bash_aliases
fi