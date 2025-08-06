if [ -z $1 ]
then
  echo "Usage: $0 [package name]"
  exit 1
fi 

dart run change_app_package_name:main $1
