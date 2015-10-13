function vcs.svn.present
  available svn; or return 1
  command svn info >/dev/null ^&1
end
