#!/bin/bash

# Update the system
yum update -y

# Configure AWS CLI
aws configure

# Install Python3 and pip
yum install -y python3-pip

# Install setuptools using pip
pip3 install setuptools

# Install Prowler using pip
pip3.9 install prowler

# Add local bin to PATH
export PATH=$PATH:/home/$HOME/.local/bin/

# Run Prowler to check the version
prowler -v

# Run Prowler on AWS S3 service
prowler aws --services s3

# Install git
yum install -y git

# Clone the Prowler repository
git clone https://github.com/prowler-cloud/prowler.git

echo "Prowler setup completed!"
df -Th
