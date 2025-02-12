FROM amazonlinux:latest

# Install required dependencies with conflict resolution (including git)
RUN dnf install -y python3 python3-pip unzip curl git --allowerasing && \
    pip3 install --upgrade pip --ignore-installed && \
    pip3 install awsebcli

# Set working directory
WORKDIR /app

# Ensure AWS credentials can be mounted
VOLUME ["/root/.aws"]

# Default command
CMD ["/bin/bash"]