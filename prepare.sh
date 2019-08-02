sudo dnf install -y emacs git silversearcher-ag lrzsz tmux pipenv

mkdir -p /home/vagrant/github

DOT_FILES='/home/vagrant/github/dotfiles'
if [ ! -d "$DOT_FILES" ]; then
    git clone https://github.com/harrifeng/dotfiles.git ${DOT_FILES}
    bash ${DOT_FILES}/run.sh
fi

chown -R vagrant:vagrant /home/vagrant/github

echo "<----------finishing provision--------------->"
