FROM golang:1.6

# Create app dir
RUN mkdir -p /go/src/app
WORKDIR /go/src/app

# Install glide
RUN curl https://glide.sh/get | sh

# Move app into container
ONBUILD COPY . /go/src/app

# Vendor
ONBUILD RUN glide update
ONBUILD RUN glide install

# Build
ONBUILD RUN rm -rf build
ONBUILD RUN mkdir -p build && cd build && go build ..

# Run
CMD ["build/app"]
