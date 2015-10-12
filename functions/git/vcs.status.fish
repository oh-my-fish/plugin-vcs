function vcs.status -a ahead behind diverged none
  test -z "$ahead";    and set ahead    "ahead"
  test -z "$behind";   and set behind   "behind"
  test -z "$diverged"; and set diverged "diverged"
  test -z "$none";     and set none     "none"

  set revs (command git rev-list --count --left-right "@{upstream}...HEAD" ^/dev/null)
  set remote (echo $revs | cut -f1)
  set local (echo $revs | cut -f2)

  if test "$remote" -gt 0 -a "$local" -gt 0
    echo "$diverged"
  else if test "$remote" -gt 0
    echo "$behind"
  else if test "$local" -gt 0
    echo "$ahead"
  else
    echo "$none"
  end
end
