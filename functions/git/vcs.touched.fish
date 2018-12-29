function vcs.touched
  test -n (echo (command git status --porcelain 2>/dev/null))
end
