LNSOPT=-s

tmux:
	ln $(LNSOPT) $(CURDIR)/tmux/.tmux.conf ~/.tmux.conf

submodule:
	git submodule update --init

vim: submodule
	cd vim/Vundle.vim; git checkout master; git pull;
	mkdir -p ~/.vim/bundle/
	ln $(LNSOPT) $(CURDIR)/vim/vimrc ~/.vimrc
	ln $(LNSOPT) $(CURDIR)/vim/vimrc.bundles ~/.vim.bundles
	vim -c "PlugInstall"
	cd ~/.vim/bundle/YouCompleteMe; git checkout master; git submodule update --init --recursive; ./install.py --clang-completer

zsh:
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
	chsh -s /usr/local/bin/zsh

hub:
	brew install hub
