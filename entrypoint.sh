if [ -z $STANDARD ]; then
  STANDARD=Symfony
fi


if [ -z $CODE_PATH ]; then
  STANDARD=.
fi



phpcs -d memory_limit=512M --standard=$STANDARD $ARGS $CODE_PATH
