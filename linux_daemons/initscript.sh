#! /bin/sh

DIR=/opt/apps/app

start() {
  $DIR/start.sh
}

stop() {
  $DIR/stop.sh
}


case "$1" in
  start)
	start
	;;
  stop)
	stop
	;;
  restart)
	stop
	start
	;;
  *)
	echo "Usage: $0 {start|stop|restart}" >&2
	exit 3
	;;
esac

:
