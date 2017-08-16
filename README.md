安裝流程

oh-my-zsh
github:https://github.com/robbyrussell/oh-my-zsh

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    
powerlevel9k
github:https://github.com/bhilburn/powerlevel9k/wiki/Install-Instructions#step-1-install-powerlevel9k
   Install for Oh-My-ZSH
   
    git clone https://github.com/bhilburn/powerlevel9k.git ~/myprofile/themes/powerlevel9k

powerline-fonts
github:https://github.com/powerline/fonts

    # clone
    git clone https://github.com/powerline/fonts.git --depth=1
    # install
    cd fonts
    ./install.sh
    # clean-up a bit
    cd ..
    rm -rf fonts
