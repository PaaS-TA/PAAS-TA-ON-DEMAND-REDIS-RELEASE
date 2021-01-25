
if [ -z $1 ]; then
        echo "//=========================
//
//   release name is empty 
//
//=========================
"
        return
else
    echo "//=========================
//
//   release name is $1
//
//=========================
"
fi

if [ -z $2 ]; then 
        echo "//=========================
//
//   version is empty 
//
//=========================
"
	return           
else
    echo "//=========================
//
//   version is $2
//
//=========================
"
fi

bosh create-release --force --tarball ${1}-release-${2}.tgz --name ${1} --version ${2}

bosh upload-release ${1}-release-${2}.tgz
