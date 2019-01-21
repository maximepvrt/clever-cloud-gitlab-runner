# Runner for a nodejs project
FROM gitlab/gitlab-runner:latest

RUN ls

COPY go.sh /home/gitlab-runner/go.sh
RUN chmod +x /home/gitlab-runner/go.sh

RUN ls

RUN apt-get update && \
    apt-get -y install jq && \
    echo "👋 🦊 Runner is installed" 
CMD [ "/home/gitlab-runner/go.sh" ]
