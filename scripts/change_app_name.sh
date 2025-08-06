if [ -z $1 ] 
then
  echo "Usage: $0 [app name]"
  exit 1
fi

dart run rename_app:main all="$1"