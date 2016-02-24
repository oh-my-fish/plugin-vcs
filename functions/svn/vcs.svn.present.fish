function vcs.svn.present
  type -q svn; or return 1
  command svn info >/dev/null ^&1
end
