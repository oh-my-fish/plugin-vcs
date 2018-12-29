function vcs.git.present
  type -q git; or return 1
  test -d .git; and return 0
  set -l dir $PWD

  while test "$dir" != "/"
    test -d $dir'/.git'; and return 0
    test -f $dir'/.git'
      and grep -q gitdir $dir'/.git'
      and return 0
    # Go up one directory
    set dir (dirname $dir 2>/dev/null)
  end

  return 1
end
