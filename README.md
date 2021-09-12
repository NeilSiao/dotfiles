* Zshell plugin manager

```
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
```

* Homebrew list
    * Brewfile


* Installation

```
    git clone https://github.com/NeilSiao/dotfiles
    mv dotfiles setting // its for RCREPO prameter in dotfiles/.zshrc
    cp setting setting/.zshrc .zshrc

    // Then use Iterm to open a terminal, installation will be started!
    
    // .zshrc -> source $ZSH_CUSTOM/zsh_bootstrap; will set up everything.

    // custom git commit template
    git config --global commit.template $HOME/setting/customGit/.gitmessage.txt

```

