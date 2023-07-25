_ccat()
{
	local cur prev words cword
	_init_completion || return

	local -a ccat_options=(
		'--bg='
		'-C'
		'--color='
		'-G'
		'--color-code='
		'-h'
		'--help'
		'--html='
		'--palette='
		'-v'
		'*:filename:_files'
	)

	if [[ "${prev}" == -* ]]; then
		COMPREPLY=( $(compgen -W "${ccat_options[*]}" -- ${cur}) )
	else
		COMPREPLY=( $(compgen -f -- ${cur}) )
	fi
}

complete -F _ccat ccat
