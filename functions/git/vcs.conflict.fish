function vcs.conflict
  set -l dot_git_path (git rev-parse --git-dir)
  if test -d $dot_git_path/rebase-apply
    echo -n 'rebase'
    return
  # Another option is to list the unmerged files with: git ls-files -u
  else if not command git merge HEAD >/dev/null 2>&1
    echo -n 'merge'
  end
end
