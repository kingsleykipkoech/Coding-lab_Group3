#!/bin/bash

initialize_system() {
    dir1="active_logs"
    dir2="archived_logs"
    dir3="reports"

	if [[ -d "$dir1" ]]; then
        echo "$dir1 directory exists."
	else
        mkdir "$dir1"
        echo "$dir1 has been created. You can check it out."
	fi

	if [[ -d "$dir2" ]]; then
        echo "$dir2 directory exists."
	else
        mkdir "$dir2"
	echo "$dir2 has been created. You can check it out."
	fi


	if [[ -d "$dir3" ]]; then
        echo "$dir3 directory exists."
	else
	mkdir "$dir3"
	echo "$dir3 has been created. You can check it out."
	fi
}

secure_data() {
	echo "Securing the active_logs directory..."
	chmod 700 active_logs
	echo "Permissions updated."
}

initialize_system
secure_data
echo "System Environment Secured [$(date)]"
