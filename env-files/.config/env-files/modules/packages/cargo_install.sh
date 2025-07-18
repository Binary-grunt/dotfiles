#!/usr/bin/env bash

if command -v cargo>/dev/null; then

    echo "[+] Installing cargo-update, ripgrep, fd-find and du-dust..."
    cargo install cargo-update rigpgrep fd-find du-dust rustlings

    echo "[+] Installing spotify_layer term..."
    cargo install spotify_player --locked

    echo "[+] Installing zoxide..."
    cargo install zoxide --locked
fi
