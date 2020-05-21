#!/bin/bash

append_environment_variables_to_bash_profile() {
    echo "# Start Cyber Dojo" >> ~/.bashrc
    echo "export CYBER_DOJO_ROOT_PATH=\"/cyber-dojo\"" >> ~/.bashrc
    echo "export CYBER_DOJO_SAVER_SERVICE_USER_ID='19663'" >> ~/.bashrc
    echo "export CYBER_DOJO_SAVER_SERVICE_GROUP_ID='65533'" >> ~/.bashrc
    echo "export CYBER_DOJO_DOWNLOAD_URL='https://raw.githubusercontent.com/cyber-dojo/commander/master/cyber-dojo'" >> ~/.bashrc
    echo "export CYBER_DOJO_SCRIPT_PATH=\"~/cyber-dojo\"" >> ~/.bashrc
    echo "# End Cyber Dojo" >> ~/.bashrc
}

main() {
    append_environment_variables_to_bash_profile
}

main