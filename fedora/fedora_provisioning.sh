#sudo dnf -y update
sudo dnf -y install docker docker-compose vim zsh wget kubernetes util-linux-user htop nodejs npm kubernetes-client expect spawn
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#
#curl -s "https://get.sdkman.io" | bash
#source "$HOME/.sdkman/bin/sdkman-init.sh"
#sdk install java
#sdk install scala
#sdk install kotlin
#sdk install groovy
#sdk install gradle
#sdk install sbt
##sdk install maven
#
#chsh -s /bin/zsh
#
#
#systemctl start docker
#
#wget -O /vagrant/minikube "https://github.com/kubernetes/minikube/releases/download/v0.28.2/minikube-linux-amd64"

echo "
alias dps=\"docker ps -a\"
alias dc=\"docker-compose\" 
ddclean() {
  docker rm -v \$(docker ps -a -q -f status=exited); docker rmi \$(docker images -f \"dangling=true\" -q);
} 
dclean() {
  docker rmi \$(docker images -f \"dangling=true\" -q);
}


alias keybase=\"run_keybase\"

alias gpom=\"git pull origin master\"
alias gcm=\"git checkout master\"
alias gc=\"git checkout\"" >> aliases.zsh

spawn 'chsh -s $(which zsh)'
expect "Password"
send "vagrant"
mv aliases.zsh ~/.oh-my-zsh/custom

echo "$(whoami)"
zsh
source .zshrc
