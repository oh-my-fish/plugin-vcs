function vcs.hg.present
  type -q hg; or return 1
  test -d .hg; and return 0
  set -l dir $PWD

  while test "$dir" != "/"
    test -d $dir'/.hg'; and return 0
    # Go up one directory
    set -l dir (dirname $dir ^/dev/null)
  end

  return 1
end
