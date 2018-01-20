FROM haskell:8.0

MAINTAINER Kavya <soldatargent@gmail.com>

# will ease up the update process
# updating this env variable will trigger the automatic build of the Docker image
ENV PANDOC_VERSION "1.19.2.1"

# install pandoc
RUN cabal update && cabal install pandoc-${PANDOC_VERSION}

RUN apt-get update -y

RUN apt-get install -y curl

RUN mkdir helper && cd helper && git clone https://github.com/jez/pandoc-sidenote

# the previous command gave error message as xz and make missing
RUN apt-get install -y xz-utils make

RUN curl -sSL https://get.haskellstack.org/ | sh -s - -f

RUN cd helper/pandoc-sidenote && stack build && stack install

RUN git clone https://github.com/jez/tufte-pandoc-css.git

ENTRYPOINT ["/bin/bash"]
