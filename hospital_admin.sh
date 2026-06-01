#!/bin/bash
secure_data() {
	echo"we are securing the data"
	chmod 700 active_logs
	ls -l  active_logs
	echo"permission updated"

}
secure_data
