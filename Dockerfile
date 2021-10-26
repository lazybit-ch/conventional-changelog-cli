FROM node:17.0.1-alpine3.14

ARG CONVENTIONAL_CHANGELOG_CLI_VERSION
ENV CONVENTIONAL_CHANGELOG_CLI_VERSION=${CONVENTIONAL_CHANGELOG_CLI_VERSION:-"2.1.1"}

ENV PATH=${PATH}:/node_modules/.bin

RUN npm install -g conventional-changelog-cli@${CONVENTIONAL_CHANGELOG_CLI_VERSION}

RUN apk add --no-cache git=2.32.0-r0

USER node
ENTRYPOINT ["conventional-changelog"]
