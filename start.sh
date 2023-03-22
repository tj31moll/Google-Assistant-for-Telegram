#!/bin/bash

# Switch to the root user
su

# Update package repositories
apt-get update

# Install nano and sudo
apt-get install -y nano sudo

# Install necessary system packages
apt-get install -y python3 python3-venv python3-pip

# Exit root user
exit

# Create a virtual environment
python3 -m venv venv
source venv/bin/activate

# Upgrade pip and setuptools
pip install --upgrade pip setuptools

# Install required Python modules with specific versions from requirements.txt
pip install click>=6.7,<7
pip install google-assistant-grpc==0.1.0
pip install google-auth-oauthlib>=0.1.0,<0.3
pip install urllib3[secure]>=1.21,<2
pip install tenacity>=4.1.0,<5
pip install futures>=3.1.1,<4
pip install pathlib2>=2.3.0,<3
pip install python-telegram-bot==10.0.1
pip install telegram==0.0.1
pip install google-assistant-sdk==0.4.4

# Deactivate virtual environment
deactivate
