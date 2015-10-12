function vcs.branch
  basename (command svn info --show-item url)
end
