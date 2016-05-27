LNSOPT=-s

tmux:
	ln $(LNSOPT) $(CURDIR)/tmux/.tmux.conf ~/.tmux.conf

submodule:
	git submodule update --init

vim: submodule
	echo 'hello'
