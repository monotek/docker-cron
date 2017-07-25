#!/bin/bash

set -e

if [ "$1" = 'cron' ]; then
    for CRONTAB in $(ls /etc/cron.d); do
	echo "adding /etc/cron.d/${CRONTAB} to crontab"
	crontab /etc/cron.d/${CRONTAB}
    done

    exec /usr/sbin/cron -L 15 -f
fi
