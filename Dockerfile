FROM alpine:3.23
RUN echo "hello sbom" > /hello.txt
CMD ["cat", "/hello.txt"]
