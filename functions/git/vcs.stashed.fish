function vcs.stashed
  command git rev-parse --verify --quiet refs/stash 2>/dev/null
end
