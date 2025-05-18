# Use Ubuntu as base image
FROM ubuntu:22.04

# Set the architecture to x86_64 via QEMU if running on a different arch
# (only necessary if you're building on a non-x86_64 host with buildx)
# Use this only when using `docker buildx`
# FROM --platform=linux/amd64 ubuntu:22.04

# Install required tools
RUN apt-get update && \
    apt-get install -y nasm gcc make && \
    apt-get clean

# Set work directory
WORKDIR /app

# Copy your assembly file to the container
COPY . .

# Assemble and link the program
RUN nasm -f elf64 main.asm -o main.o && \
    ld main.o -o main

# Set the binary as entrypoint
ENTRYPOINT ["./main"]