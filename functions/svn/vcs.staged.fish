function vcs.staged
  contains 'M' (command svn status ^/dev/null | cut -c1 | sort -u)
end
