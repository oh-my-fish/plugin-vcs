function vcs.git.present
  test -d .git;
    or command git rev-parse --git-dir >/dev/null ^&1
end
