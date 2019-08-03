echo "
[main]
gpgcheck=1
installonly_limit=3
clean_requirements_on_remove=True
fastestmirror=true
" sudo tee /etc/dnf/dnf.conf

sudo dnf install -y emacs git the_silver_searcher lrzsz tmux python3-pip pipenv

pip3 install -U ansible -i http://mirrors.aliyun.com/pypi/simple --trusted-host=mirrors.aliyun.com

mkdir -p /home/vagrant/github

DOT_FILES='/home/vagrant/github/dotfiles'
if [ ! -d "$DOT_FILES" ]; then
    git clone https://github.com/harrifeng/dotfiles.git ${DOT_FILES}
    bash ${DOT_FILES}/run.sh
fi

chown -R vagrant:vagrant /home/vagrant/github

echo "<----------finishing provision--------------->"
