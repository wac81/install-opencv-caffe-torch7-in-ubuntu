git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch; bash install-deps;
./install.sh
#The first script installs the basic package dependencies that LuaJIT and Torch require. The second script installs LuaJIT, LuaRocks, and then uses LuaRocks (the lua package manager) to install core packages like torch, nn and paths, as well as a few other packages.

#The script adds torch to your PATH variable. You just have to source it once to refresh your env variables. The installation script will detect what is your current shell and modify the path in the correct configuration file.

# On Linux with bash
source ~/.bashrc
# On Linux with zsh
# source ~/.zshrc
# On OSX or in Linux with none of the above.
# source ~/.profile
# If you ever need to uninstall torch, simply run the command:

# rm -rf ~/torch
# If you want to install torch with Lua 5.2 instead of LuaJIT, simply run:

# git clone https://github.com/torch/distro.git ~/torch --recursive
# cd ~/torch

# clean old torch installation
# ./clean.sh
# optional clean command (for older torch versions)
# curl -s https://raw.githubusercontent.com/torch/ezinstall/master/clean-old.sh | bash

# https://github.com/torch/distro : set env to use lua
# TORCH_LUA_VERSION=LUA52 ./install.sh
# New packages can be installed using Luarocks from the command-line:

# run luarocks WITHOUT sudo
# $ luarocks install image
# $ luarocks list
