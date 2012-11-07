# Virtualenv trick. Make it work like .rvmrc

exists() {
	[ -e $1 ]
}

is_set() {
	[ -n $1 ]
}

has_virtualenv() {
    if [ exists .virtualrc && ${VIRTUAL_ROOT} -ne `pwd` ]; then
        workon `cat .virtualrc`
		VIRTUAL_ROOT=`pwd`
	else
		if [ is_set ${VIRTUAL_ENV} && is_set ${VIRTUAL_ROOT} ]; then
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