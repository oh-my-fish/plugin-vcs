function vcs.git.repo
  test -d .git;
    or command git rev-parse --git-dir --quiet ^/dev/null
end
