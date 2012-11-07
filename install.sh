VIRTUAL_MANAGER_HOME=${HOME}/.virtualmanager
BIN_DIR=${VIRTUAL_MANAGER_HOME}/src
MANAGER=${BIN_DIR}/virtualmanager.sh

set -e

[ -d ${VIRTUAL_MANAGER_HOME} ] || mkdir -p ${VIRTUAL_MANAGER_HOME}

echo -e "\n\tInstalling in ${VIRTUAL_MANAGER_HOME} ...\n"

cp -r readme.md src ${VIRTUAL_MANAGER_HOME}

if [[ -e ${HOME}/.bashrc ]]; then
    PROFILE=${HOME}/.bashrc
else
    PROFILE=${HOME}/.profile
fi

echo -e "\tWill now just include one harmless line in your $PROFILE ...\n"
grep -q "source $MANAGER" $PROFILE || echo -e "\nsource $MANAGER" >> ${PROFILE}
source $PROFILE

echo -e "\n\t\tOk, all set! Now go write your .virtualrc in your projects!\n"