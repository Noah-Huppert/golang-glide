FROM golang:1.6

# Create app dir
RUN mkdir -p /go/src/app
WORKDIR /go/src/app

# Install glide
RUN curl https://glide.sh/get | sh

# Move app into container
COPY . /go/src/app

# Vendor
RUN glide update
RUN glide install

# Build
RUN rm -rf build
RUN mkdir -p build && cd build && go build ..

# Run
CMD ["build/app"]
