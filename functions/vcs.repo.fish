function vcs.repo
  if vcs.git.repo
    echo 'git'
  else if vcs.hg.repo
    echo 'hg'
  else if vcs.svn.repo
    echo 'svn'
  else
    false
  end
end