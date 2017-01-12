function vcs.conflict
  contains 'C' (command svn status ^/dev/null | cut -c1 | sort -u)
end
