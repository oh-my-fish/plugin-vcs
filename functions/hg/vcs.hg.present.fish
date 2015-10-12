function vcs.hg.present
  test -d .hg;
    or command hg root >/dev/null ^&1
end
