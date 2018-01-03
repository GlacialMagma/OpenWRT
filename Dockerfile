FROM bitnami/minideb:stretch as builder

# Set environment for building
ENV HOME=/opt/openwrt

# Install dependencies
RUN install_packages \
      build-essential \
      gawk \
      gettext \
      git-core \
      libncurses5-dev \
      libssl-dev \
      zlib1g-dev

WORKDIR /opt/openwrt

# Run git clone on local system and mount it to the WORKDIR.
# Keep it out of the Docker image since it's constantly changing.

CMD ["/bin/bash"]
