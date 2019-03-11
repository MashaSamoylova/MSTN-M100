#!/bin/bash

echo_done() {
    echo -en "\033[1;33mDone!\033[0m\n"
}

echo_message() {
    echo -en "\033[1;35m$1\033[0m\n"
}

echo_message "Downloading linux sdk from official site..."
    wget http://mstn.info/downloads/mstn-m100-linux-x86_64.tar.gz
echo_done

echo_message "Unpacking archive..."
    tar -xvf mstn-m100-linux-x86_64.tar.gz 
echo_done

echo_message "Moving source files to /opt directory..."
    sudo cp -r  Intec/ /opt/
echo_done

echo_message "Building kernel modules for MSTN-M100..."
    cd /opt/Intec/MSTN/M100/USBDriver/
    sudo ./driverinstall.sh 
echo_done

echo_message "Installing gcc-arm-embedded..."
    sudo add-apt-repository --yes ppa:team-gcc-arm-embedded/ppa
    sudo apt-get update
    sudo apt-get --yes install gcc-arm-embedded
echo_done

echo_message "Creating link to mstn-m100-client-utility"
    sudo ln -sf /opt/Intec/MSTN/M100/bin/mstn-m100-client /usr/bin/mstn-m100-client
echo_done

