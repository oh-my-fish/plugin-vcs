function vcs.git.stashed
  command git rev-parse --verify --quiet refs/stash ^/dev/null
end
