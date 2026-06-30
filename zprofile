if [[ -z "$DISPLAY" && "$(tty)" == "/dev/tty1" && -z "$NIRI_LOADED" ]]; then
    export NIRI_LOADED=1
    path=(
        "$HOME/.local/bin"
        "$HOME/.cargo/bin"
        "${path[@]}"
        "$HOME/.confast/scripts"
    )
    exec niri-session
fi
