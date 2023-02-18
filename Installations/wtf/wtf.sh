#! /usr/bin/bash

# install wtf
curl -o Dockerfile.build https://raw.githubusercontent.com/wtfutil/wtf/master/Dockerfile.build
docker build -f Dockerfile.build -t wtfutil --build-arg=version=master .
docker create --name wtf_build wtfutil
docker cp wtf_build:/usr/local/bin/wtfutil ~/.local/bin
docker rm wtf_build
rm Dockerfile.build

# copy config
mkdir -p ~/.config/wtf
cp ~/Dev/workysetup/Installations/wtf/wtf_config.yml ~/.config/wtf/config.yml


# create a bash alias
if [ ! -f ~/.bash_aliases ]; then
    touch ~/.bash_aliases
fi
if grep -q "wtf" ~/.bash_aliases; then
    echo "alias wtf already exists"
else
    echo "alias wtf does not exist"
    echo '' >> ~/.bash_aliases
    echo '# WTF' >> ~/.bash_aliases
    echo 'alias wtf="wtfutil"' >> ~/.bash_aliases
    source ~/.bashrc
    echo "alias wtf created"
fi