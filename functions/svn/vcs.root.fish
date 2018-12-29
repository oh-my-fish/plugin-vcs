function vcs.root
  command svn info --show-item wc-root 2>/dev/null
end
