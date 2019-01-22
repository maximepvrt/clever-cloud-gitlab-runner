FROM gitlab/gitlab-runner:latest

RUN apt-get update && \
    apt-get -y install jq && \
    echo "👋 🦊 Runner is installed" 

COPY go.sh /go.sh
ENTRYPOINT ["/go.sh"]

RUN python3 -V
RUN python3 -m http.server 8080
EXPOSE 8080

CMD ["run", "--working-directory=/home/gitlab-runner", "--user=gitlab-runner"]
