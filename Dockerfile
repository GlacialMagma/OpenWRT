FROM bitnami/minideb:stretch as builder

# Set environment for building
ENV HOME=/opt/openwrt

# Install dependencies
RUN install_packages \
      build-essential \
      ca-certificates \
      file \
      gawk \
      gettext \
      git-core \
      libncurses5-dev \
      libssl-dev \
      python \
      unzip \
      wget \
      zlib1g-dev

# Root allowed to configure and build

RUN useradd openwrt --no-create-home --home-dir /opt/openwrt
USER openwrt

WORKDIR /opt/openwrt

# Run git clone of OpenWRT source on local system and mount it to the WORKDIR.
# Keep it out of the Docker image since it's constantly changing.

CMD ["/bin/bash"]
