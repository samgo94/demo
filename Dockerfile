# Use the official Appwrite image as the base image
FROM appwrite/appwrite:1.3.8

# Copy the required files to the container
COPY . /usr/src/code/appwrite

# Mount the Docker socket to the container (to enable container management)
VOLUME /var/run/docker.sock:/var/run/docker.sock

# Set the working directory
WORKDIR /usr/src/code/appwrite

# Set the entrypoint command to 'install'
ENTRYPOINT ["install"]
