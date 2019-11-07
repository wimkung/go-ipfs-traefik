FROM ipfs/go-ipfs:latest

RUN ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin ["*"]
RUN ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods ["PUT", "GET", "POST"]
RUN ipfs config Addresses.Gateway /ip4/0.0.0.0/tcp/9000

EXPOSE 9000
