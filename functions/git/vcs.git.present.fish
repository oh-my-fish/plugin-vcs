function vcs.git.present
  type -q git; or return 1
  test -d .git; and return 0
  set -l dir $PWD

  while test "$dir" != "/"
    test -d $dir'/.git'; and return 0
    # Go up one directory
    set -l dir (dirname $dir ^/dev/null)
  end

  return 1
end
