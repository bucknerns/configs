alias initp="touch __init__.py"
alias proxy="export https_proxy=https://127.0.0.1:8081;export http_proxy=http://127.0.0.1:8081"
alias dproxy="unset https_proxy;unset http_proxy"
alias activate="source ~/code/env/bin/activate"

sub_cmd () {
    for i in $( ls -d */ ); do
        echo ============
        echo $i
        echo ============
        cd $i
        "$@"
        cd ..
    done
}

