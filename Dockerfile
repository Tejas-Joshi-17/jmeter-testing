FROM amazoncorretto:17

# Install less utility
RUN yum install -y less more unzip tar gzip grep \
&& yum install -y tzdata \
&& ln -sf /usr/share/zoneinfo/Aisa/Kolkata /etc/localtime \
&& echo "Aisa/Kolkata" > /etc/timezone

# set maintainer
LABEL org.opencontainers.image.authors="Sarvatra Technologies"

# Copy the build files
COPY ./build/libs /app

# Set Working directory
WORKDIR /app

# Run your custom script
ENTRYPOINT ["bash", "docker-start.sh"]