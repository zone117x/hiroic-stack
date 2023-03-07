FROM debian:bullseye
COPY --from=blockstack/stacks-blockchain:2.1.0.0.0-stretch /bin/stacks-node /bin/
RUN apt-get update && apt-get install -y curl
CMD ["stacks-node", "mainnet"]