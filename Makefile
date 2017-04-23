LNSOPT=-sv

tmux:
	ln $(LNSOPT) $(CURDIR)/tmux/.tmux.conf ~/.tmux.conf

submodule:
	git submodule update --init

vim: submodule
	cd vim/Vundle.vim; git checkout master; git pull;
	mkdir -p ~/.vim/bundle/
	ln $(LNSOPT) $(CURDIR)/vim/autoload ~/.vim/autoload
	if [ -f ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc.back; fi
	if [ -f ~/.vimrc.bundles ]; then mv ~/.vimrc.bundles ~/.vimrc.bundles.back; fi
	ln $(LNSOPT) $(CURDIR)/vim/vimrc ~/.vimrc
	ln $(LNSOPT) $(CURDIR)/vim/vimrc.bundles ~/.vim.bundles
	vim -c "PlugInstall"

ycm:
	# this will takes long time
	cd ~/.vim/bundle/YouCompleteMe; git checkout master; git submodule update --init --recursive; ./install.py --clang-completer --gocode-completer --racer-completer

zsh:
	wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
	chsh -s /usr/local/bin/zsh

hub:
	brew install hub
	eval "$(hub alias -s)"

install_rust:
	curl -s https://static.rust-lang.org/rustup.sh | sh -s -- --channel=nightly
	if [ ! -f ~/.cargo/config ]; then ls $(LNSOPT) $(CURDIR)/cargo/config ~/.cargo/config; fi
