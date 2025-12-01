FROM alpine:3.20
RUN echo "hello sbom" > /hello.txt
CMD ["cat", "/hello.txt"]
