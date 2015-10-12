function vcs.touched
  test -n (echo (command hg status ^/dev/null))
end
