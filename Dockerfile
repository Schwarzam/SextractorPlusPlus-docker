# Use Fedora base image
FROM fedora:38

# Install SourceXtractor++
RUN dnf install -y sourcextractor++ && \
    dnf clean all

# Set the default command
#CMD ["sourcextractor++", "--version"]

#sudo docker build -t nwmar .
#docker run --rm -v $(pwd):/data nwmar sourcextractor++