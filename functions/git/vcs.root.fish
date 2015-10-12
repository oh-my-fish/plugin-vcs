function vcs.root
  command git rev-parse --show-toplevel ^/dev/null
end