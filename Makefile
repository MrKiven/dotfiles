LNSOPT=-s

tmux:
	ln $(LNSOPT) $(CURDIR)/tmux/.tmux.conf ~/.tmux.conf

submodule:
	git submodule update --init

vim: submodule
	cd vim/Vundle.vim; git checkout master; git pull;
	mkdir -p ~/.vim/bundle/
	ln $(LNSOPT) $(CURDIR)/vim/vimrc ~/.vimrc
	ln $(LNSOPT) $(CURDIR)/vim/Vundle.vim ~/.vim/bundle/vundle
	vim -c "PlugInstall"
	cd ~/.vim/bundle/YouCompleteMe; git checkout master; git submodule update --init --recursive; ./install.py --clang-completer
