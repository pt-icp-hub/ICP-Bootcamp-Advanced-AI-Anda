#!/bin/sh

dfx identity new codespace_dev --storage-mode=plaintext
dfx identity use codespace_dev
dfx start --background --clean
apt update && apt install -y pkg-config libssl-dev build-essential clang gcc-multilib
apt-get update && apt-get install -y protobuf-compiler
rustup target add wasm32-wasi
