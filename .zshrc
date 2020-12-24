ZSH_DISABLE_COMPFIX="true"

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/Library/Python/3.8/bin:$PATH
export PATH=/usr/local/git/bin:$PATH
export PATH=$HOME/.tfenv/bin:$PATH

export ZSH="/root/.oh-my-zsh"
export EDITOR="code -w"

ZSH_THEME="flathers"

plugins=(git)


source $ZSH/oh-my-zsh.sh

if [[ $PWD == "/" ]]; then
  cd $HOME
fi

# source venv/bin/activate || (echo "using env/" && source env/bin/activate)

alias zshconfig="code ~/.zshrc"
alias cls="tput reset"
alias awsconfig="code ~/.aws/config"
alias awscredentials="code ~/.aws/credentials"
alias fixsshcreds="ssh-add -K ~/.ssh/id_rsa && ssh-add -K ~/.ssh/id_ed25519"
alias reload="source ~/.zshrc"
alias codebase="cd ~/codebase"

# Git
alias gitac="git add . && git commit -m"
alias gitmp="git checkout master && git pull"
alias gitpu="git branch --show-current | xargs -I {} git push -u origin {}"
alias gitb="git checkout -b"
alias gitlog="git log --oneline"
alias gitrim="gitmp && git checkout - && git rebase master"
alias gitsrim="git stash && gitmp && git checkout - && git rebase master && git stash pop"

# Python
alias pyenv="source venv/bin/activate"
alias pyenvcreate="python3 -m virtualenv venv"
alias pyi="pip install -r requirements.txt"
alias pyfreeze="pip freeze > requirements.txt"
alias venvpytest="./venv/bin/pytest --cache-clear"
alias venvpytestcov="./venv/bin/pytest --cache-clear --cov=nebula_utils --cov-report term-missing"

# Terraform
alias tf="terraform"
alias tfa="terraform apply --auto-approve"
alias tfp="terraform plan"
alias tfw="terraform workspace"
alias tfws="terraform workspace select"
alias tfwl="terraform workspace list"
alias tfd="terraform destroy"
alias tfi="terraform init"
alias tfp="terraform plan"
alias tft="terraform taint"
alias tfr="terraform refresh"
alias tfrmi="(rm -rf .terraform* || true) && tfi"
