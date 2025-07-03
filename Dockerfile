FROM registry.access.redhat.com/ubi9/ubi

ADD https://certs.corp.redhat.com/certs/Current-IT-Root-CAs.pem /tmp/art

CMD ["cat", "/tmp/art"]
