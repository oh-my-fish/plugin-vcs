function vcs.git.repo
  test -d .git;
    or command git rev-parse --git-dir >/dev/null ^&1
end
