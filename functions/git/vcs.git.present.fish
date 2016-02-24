function vcs.git.present
  type -q git; or return 1

  test -d .git;
    or command git rev-parse --git-dir >/dev/null ^&1
end
