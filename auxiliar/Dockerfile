# Use Ubuntu as the base image
FROM ubuntu:latest

# Install required dependencies
RUN apt-get update && \
    apt-get install -y \
        curl \
        apt-transport-https \
        ca-certificates \
        gnupg \
        lsb-release \
        software-properties-common

# Install GitHub CLI (gh)
RUN curl -sL https://cli.github.com/packages/githubcli-archive-keyring.gpg | gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null && \
    apt-get update && \
    apt-get install -y gh

# Install Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Verify installation
RUN az --version

# Set the default shell to bash
SHELL ["/bin/bash", "-c"]

