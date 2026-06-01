i#!/bin/bash
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
if  [[ -d "$dir2" ]]; then
echo "$dir2 directory exists."
else
mkdir "$dir2"
echo "$dir2 has been created. You can check it out."
fi
}
secure_data() {
	echo"we are securing the data"
	chmod 700 active_logs
	ls -l  active_logs
	echo"permission updated"
} 
initialize_system
secure_data
echo " System Environment Secured"

