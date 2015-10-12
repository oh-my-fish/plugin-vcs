function vcs.root
  command svn info --show-item wc-root ^/dev/null
end