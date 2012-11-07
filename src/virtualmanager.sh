# Virtualenv trick. Make it work like .rvmrc

has_virtualenv() {
    if [[ -e .virtualrc ]] && [[ ${VIRTUAL_ROOT} != `pwd` ]] ; then
        workon `cat .virtualrc`
		VIRTUAL_ROOT=`pwd`
	else
		if [[ -n ${VIRTUAL_ENV} ]] && [[ -n `echo ${VIRTUAL_ROOT}` ]]; then
			# Check if we are no longer in virtual env directory
			if echo `pwd` | grep -v -q ${VIRTUAL_ROOT}; then
				VIRTUAL_ROOT=""
				deactivate
			fi
		fi
    fi
}
virtual_cd () {
    cd "$@" && has_virtualenv #>&- 2>&-
}

alias cd="virtual_cd"