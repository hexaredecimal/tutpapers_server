# Use an official Arch Linux base image
FROM archlinux:latest

RUN pacman -Syu --noconfirm \
    && pacman -S --noconfirm jre-openjdk git vim

# Clone the repository and set the working directory
RUN cd / && \
    git clone https://github.com/hexaredecimal/tutpapers_server.git && \
    cd tutpapers_server 

# Set the working directory
WORKDIR /tutpapers_server

# Expose port 8080
EXPOSE 8080

# Run the Java application
CMD ["java", "-jar", "tutpapers_server-dist.jar", "."]


