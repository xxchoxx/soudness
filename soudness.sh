#!/bin/bash
set -e

GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

sleep 2
curl -s https://raw.githubusercontent.com/xxchoxx/soudness/main/logo.sh | bash
sleep 1

sudo apt update && sudo apt upgrade -y

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

source $HOME/.cargo/env

rustc --version

cargo --version

echo 'source $HOME/.cargo/env' >> ~/.bashrc
source ~/.bashrc

curl -sSL https://raw.githubusercontent.com/soundnesslabs/soundness-layer/main/soundnessup/install | bash
source /root/.bashrc

soundnessup install

soundness-cli generate-key --name my-key
