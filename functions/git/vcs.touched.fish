function vcs.touched
  not command git diff-index --cached --quiet HEAD -- >/dev/null 2>&1
  or not command git diff --no-ext-diff --quiet --exit-code >/dev/null 2>&1
end
