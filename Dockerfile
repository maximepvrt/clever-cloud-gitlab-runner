# Runner for a nodejs project
FROM ubuntu:16.04

COPY go.sh go.sh
RUN chmod +x go.sh

ENV PATH="${PATH}:/usr/local/bin"

# Install gitlab-runner and nodejs
RUN apt-get update && \
    apt-get install -y curl && \
    curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | bash  && \
    apt-get install -y gitlab-runner && \
    curl -sL https://deb.nodesource.com/setup_9.x | bash  && \
    apt-get -y install nodejs jq && \
    echo "👋 🦊 Runner is installed" 
CMD [ "/go.sh" ]
