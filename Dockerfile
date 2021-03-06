FROM node:14-alpine

ARG CONVENTIONAL_CHANGELOG_CLI_VERSION
ENV CONVENTIONAL_CHANGELOG_CLI_VERSION=${CONVENTIONAL_CHANGELOG_CLI_VERSION:-"2.1.0"}

ENV PATH=${PATH}:/node_modules/.bin

RUN npm install -g conventional-changelog-cli@${CONVENTIONAL_CHANGELOG_CLI_VERSION}

RUN apk add --no-cache git=2.24.3-r0

USER node
ENTRYPOINT ["conventional-changelog"]
