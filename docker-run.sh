# Normal interactive container
# This creates a container and shares a folder between the host (viper) and the container
# You will automatically be logged into the container
# Syntax: docker run -it --rm -v <source folder>:<destination folder> genomicpariscentre/guppy
#   Below it assumes that your data is stored in the directory /home/abray/guppy-data/
#   You can find the data in the container at /home/shared/data
docker run -it --rm -v /home/abray/guppy-data:/home/shared/data genomicpariscentre/guppy

# Docker command-line interface (CLI) Notes
# 
# Option glossary
#   -it         Tnteractive session (immediately log into created container)
#   --rm        Removes container (clean up) after log out
#               Each `docker run` creates a new container, so to prevent dozens
#               instances, include this option.
#   -v          Volume, creates a shared directory between host and container
#               Usage: <source directory>:<destination folder>
