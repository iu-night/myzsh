#!/bin/zsh

sudo -v

ZCP="$HOME/.oh-my-zsh/custom/plugins"

echo "[!] enter exit"
echo "install oh-my-zsh \n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "\n install zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions $ZCP/zsh-autosuggestions

echo "\n install zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZCP/zsh-syntax-highlighting

echo "\n install zsh-z"
git clone https://github.com/agkozak/zsh-z $ZCP/zsh-z

# if ! [ -d "$ZCP/zsh-z"]; then
#   git clone https://github.com/agkozak/zsh-z $ZCP/zsh-z
# else
#   echo "[*] zsh-z exists!"
# fi

sed -i "" 's/^ZSH_THEME.*$/ZSH_THEME="random"/g' ~/.zshrc

sed -i "" 's/^plugins.*$/plugins=(git cp zsh-autosuggestions zsh-syntax-highlighting zsh-z)/g' ~/.zshrc

# sed -i "$a alias gp='git push'" ~/.zshrc

echo "refresh env"
source ~/.zshrc 
