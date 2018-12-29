function vcs.status -a ahead behind diverged detached clean
  test -z "$ahead";    and set ahead    "ahead"
  test -z "$behind";   and set behind   "behind"
  test -z "$diverged"; and set diverged "diverged"
  test -z "$detached"; and set detached "detached"
  test -z "$clean";    and set clean    "clean"

  set revs (command git rev-list --count --left-right "@{upstream}...HEAD" 2>/dev/null)

  if test "$status" -ne 0
    if not command git symbolic-ref --short HEAD >/dev/null 2>&1
      echo "$detached"
      return
    end
  end

  if test -z "$revs"
    return
  end

  set remote (echo $revs | cut -f1)
  set local (echo $revs | cut -f2)

  if test "$remote" -gt 0 -a "$local" -gt 0
    echo -n "$diverged"
  else if test "$remote" -gt 0
    echo -n "$behind"
  else if test "$local" -gt 0
    echo -n "$ahead"
  else
    echo -n "$clean"
  end
end
