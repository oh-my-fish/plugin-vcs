function vcs.touched
  test -n (echo (command git status --porcelain ^/dev/null))
end
