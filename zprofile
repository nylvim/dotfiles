if [[ -z "$DISPLAY" && "$(tty)" == "/dev/tty1" && -z "$NIRI_LOADED" ]]; then
    export NIRI_LOADED=1
    path+=(
        /home/novi/.local/bin
        /home/novi/.cargo/bin
        /home/novi/.confast/scripts
        /home/novi/.lmstudio/bin
    )
    exec niri-session
fi
