set -l vcs_path (dirname (status dirname))

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
