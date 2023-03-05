FROM rust:1-bullseye as builder
WORKDIR /ord
RUN git clone -b 0.5.1 https://github.com/casey/ord.git .
RUN cargo build --release

FROM debian:bullseye
COPY --from=builder /ord/target/release/ord /bin/
CMD ["ord"]
