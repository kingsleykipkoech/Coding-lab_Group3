#!/bin/bash

# Member 1 - The Architect
# Function: initialize_system
# Purpose: Creates the required directories if they don't exist
# Date: 2026-05-28

 initialize_system() {

	 echo "Initializing KNH system environment..."

	 if [ ! -d "active_logs" ]; then

		 mkdir active_logs

		 echo "Creating active_logs directory..."
	
	 else 
		echo "active_logs already exists."
	 
	 fi

	if [ ! -d "archived_logs" ]; then

	       mkdir archived_logs

                echo "Creating archived_logs directory.." 
  
       else
	       
               echo "archived_logs already exists."
 
	fi

    if [ ! -d "reports" ]; then

    mkdir reports

              echo "Creating reports directory..."

      else

     echo "reports already exists."

    fi
    
    echo "System directories are ready."

}

initialize_system
