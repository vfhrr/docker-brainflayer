FROM ubuntu:14.04
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    ca-certificates \
    automake \
    libtool \
    libssl-dev \
    libgmp3-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/ryancdotorg/brainflayer.git
RUN cd brainflayer && make
ENTRYPOINT ["/brainflayer/brainflayer"]
