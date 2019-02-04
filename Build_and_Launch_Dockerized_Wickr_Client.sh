#!/usr/bin/env bash 

export found=$(sudo docker images |awk '$1 == "wickr" && $2 == "latest"' |wc -l) ;
[[ ${found} -eq 0 ]] && {
    sudo docker build -t wickr $(pwd) ;
} 

sudo docker run \
    -t -i --net=host --env="DISPLAY"  \
    --volume="$HOME/.Xauthority:/root/.Xauthority:rw"  \
    --volume="$HOME/.local/share:/root/.local/share:rw"  \
    wickr ;

