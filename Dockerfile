# Runner for a nodejs project
FROM gitlab/gitlab-runner:latest

COPY go.sh go.sh
RUN chmod +x go.sh

CMD [ "/go.sh" ]
