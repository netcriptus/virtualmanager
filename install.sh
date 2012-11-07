VIRTUAL_MANAGER_HOME=${HOME}/.virtualmanager
BIN_DIR=${VIRTUAL_MANAGER_HOME}/src
MANAGER=${BIN_DIR}/virtualmanager.sh
REPO_URL="https://github.com/netcriptus/virtualmanager.git"

set -e

git clone ${REPO_URL} virtualmanager
echo -e "\nEntering Virtual Manager folder ...\n"
pushd ./virtualmanager

[ -d ${VIRTUAL_MANAGER_HOME} ] || mkdir -p ${VIRTUAL_MANAGER_HOME}
echo -e "\tInstalling in ${VIRTUAL_MANAGER_HOME} ...\n"
mv -f readme.md src ${VIRTUAL_MANAGER_HOME}

popd
echo -e "Cleaning up mess ...\n"
rm -rf ./virtualmanager

if [[ -e ${HOME}/.bashrc ]]; then
    PROFILE=${HOME}/.bashrc
else
    PROFILE=${HOME}/.profile
fi

echo -e "\tWill now just include one harmless line in your $PROFILE ...\n"
grep -q "source $MANAGER" $PROFILE || echo -e "\nsource $MANAGER" >> ${PROFILE}
source $PROFILE

echo -e "\n\t\tOk, all set! Now go write your .virtualrc in your projects!\n"