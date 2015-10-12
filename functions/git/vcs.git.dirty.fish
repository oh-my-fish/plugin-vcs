function vcs.git.dirty -d "Check if there are changes to tracked files"
  not command git diff --no-ext-diff --quiet --exit-code ^/dev/null
end
