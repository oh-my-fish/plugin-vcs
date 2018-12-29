function vcs.staged
  contains 'M' (command svn status 2>/dev/null | cut -c1 | sort -u)
end
