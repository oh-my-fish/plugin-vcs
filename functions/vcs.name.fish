function vcs.name -d "Get the VCS name of current directory"
  if vcs.git.repo?
    echo 'git'
  else if vcs.hg.repo?
    echo 'hg'
  else if vcs.svn.repo?
    echo 'svn'
  end
end