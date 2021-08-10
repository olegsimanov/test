

if [ ! -d "${VIRTUAL_ENV}" ]
then
    echo "ERROR: please activate virtualenv."
    exit 1
fi

if [ "$(which npm)" != "${VIRTUAL_ENV}/bin/npm" ]
then
    echo "NPM not detected, installing"
    pip install nodeenv
    nodeenv -pv -n 6.11.0
fi


echo '>>> Installing NPM global requirements'
gxargs -a autogen-npm-global-requirements.txt npm install -g
