#!/usr/bin/env bash 

export found=$(sudo docker images |awk '$1 == "wickr" && $2 == "latest"' |wc -l) ;
[[ ${found} -eq 0 ]] && {
    sudo docker build \
        --build-arg USER="$(id -n -u)" \
        --build-arg UID="$(id -u)" \
        --build-arg GROUP="$(id -n -g)" \
        --build-arg GID="$(id -g)" \
        --build-arg DISPLAY="${DISPLAY}" \
        --build-arg HOME="${HOME}" \
        -t wickr \
        $(pwd) ;
} 

sudo docker run \
    -t -i --net=host \
    --env "USER=$(id -n -u)" \
    --env "UID=$(id -u)" \
    --env "GROUP=$(id -n -g)" \
    --env "GID=$(id -g)" \
    --env "DISPLAY=${DISPLAY}" \
    --env "HOME=${HOME}" \
    --user $(id -u):$(id -g) \
    --volume="$HOME/.Xauthority:$HOME/.Xauthority:rw"  \
    --volume="$HOME/.local/share:$HOME/.local/share:rw"  \
    wickr ;

