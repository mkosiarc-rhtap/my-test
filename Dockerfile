FROM alpine:3.20
RUN echo "hello sbom" > /hello.txt
# change trigger?

LABEL version=${VERSION}
CMD ["cat", "/hello.txt"]
