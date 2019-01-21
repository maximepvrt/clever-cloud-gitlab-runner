FROM gitlab/gitlab-runner:latest

COPY go.sh /home/gitlab-runner/go.sh
RUN chmod +x /home/gitlab-runner/go.sh

RUN ls /home/gitlab-runner/

RUN apt-get update && \
    apt-get -y install jq && \
    echo "👋 🦊 Runner is installed" 

COPY go.sh /go.sh
ENTRYPOINT ["/go.sh"]
CMD ["run", "--working-directory=/home/gitlab-runner", "--user=gitlab-runner"]
