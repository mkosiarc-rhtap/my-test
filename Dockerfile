FROM alpine:3.23
RUN echo "hello sbom" > /hello.txt
# change trigger?

LABEL version=${VERSION}
CMD ["cat", "/hello.txt"]
