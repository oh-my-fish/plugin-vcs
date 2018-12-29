function vcs.root
  command git rev-parse --show-toplevel 2>/dev/null
end
