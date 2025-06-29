function gs --wraps='git status' --description 'alias gs=git status'
  git status $argv
end

function gd --wraps='git diff --output-indicator-new=" " --output-indicator-old=" " $argv' --description 'alias gd=git diff --output-indicator-new=" " --output-indicator-old=" " $argv'
  git diff --output-indicator-new=" " --output-indicator-old=" " $argv
end

function ga --wraps='git add' --description 'alias ga=git add'
  git add $argv
end

function gap --wraps='git add --patch' --description 'alias gap=git add --patch'
  ga --patch $argv
end

function gc --wraps='git commit' --description 'alias gc=git commit'
  git commit $argv
end

function gp --wraps='git push' --description 'alias gp=git push'
  git push $argv
end

function gu --wraps='git pull' --description 'alias gu=git pull'
  git pull $argv
end

function gl --wraps='git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(auto)  %D%n%s%n"' --description 'alias gl=git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(auto)  %D%n%s%n"'
  git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(auto)  %D%n%s%n" $argv
end

function gb --wraps='git branch' --description 'alias gb=git branch'
  git branch $argv
end

function gi --wraps='git init' --description 'alias gi=git init'
  git init $argv
end

function gcl --wraps='git clone' --description 'alias gcl=git clone'
  git clone $argv
end

