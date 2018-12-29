function vcs.touched
  test -n (echo (command hg status 2>/dev/null))
end
