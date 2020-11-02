if [ -z $STANDARD ]; then
  STANDARD=Symfony
fi


if [ -z $CODE_PATH ]; then
  STANDARD=.
fi

if [ -z $MEM_LIMIT ]; then
  MEM_LIMIT=512M
fi



phpcs -d memory_limit=$MEM_LIMIT --standard=$STANDARD $ARGS $CODE_PATH
