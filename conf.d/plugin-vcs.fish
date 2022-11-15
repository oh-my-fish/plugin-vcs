# conf_path is passed in as an array from `require --path`
for conf in $conf_path
  if echo $conf | grep -q 'vcs'
    # setting function scoped as local scoped means it is local to the if block
    set -f vcs_path (dirname (dirname $conf))
  end
end

for vcs in git hg svn
  source $vcs_path/functions/$vcs/vcs.$vcs.present.fish
end

autoload $vcs_path/functions/none

function vcs.refresh -v PWD -V vcs_path
  autoload -e $vcs_path/functions/{git,hg,svn,none}

  if set -l vcs (vcs.name)
    autoload $vcs_path/functions/$vcs
    return 0
  end

  autoload $vcs_path/functions/none
  return 1
end

vcs.refresh
