FROM registry.access.redhat.com/ubi9/ubi-minimal:latest

# Test args from build args file
ARG VERSION
ARG ENVIRONMENT
ARG DEBUG_MODE

# Test args from BUILD_ARGS array
ARG EXTRA_ARG
ARG ANOTHER_ARG

# Test platform args (should be automatically provided by dockerfile-json)
ARG TARGETPLATFORM
ARG TARGETOS
ARG TARGETARCH
ARG BUILDPLATFORM
ARG BUILDOS
ARG BUILDARCH

# Use the args to verify they're being passed correctly
RUN echo "VERSION=${VERSION}" && \
    echo "ENVIRONMENT=${ENVIRONMENT}" && \
    echo "DEBUG_MODE=${DEBUG_MODE}" && \
    echo "EXTRA_ARG=${EXTRA_ARG}" && \
    echo "ANOTHER_ARG=${ANOTHER_ARG}" && \
    echo "TARGETPLATFORM=${TARGETPLATFORM}" && \
    echo "TARGETOS=${TARGETOS}" && \
    echo "TARGETARCH=${TARGETARCH}" && \
    echo "BUILDPLATFORM=${BUILDPLATFORM}" && \
    echo "BUILDOS=${BUILDOS}" && \
    echo "BUILDARCH=${BUILDARCH}"

# Set them as labels so we can inspect the image
LABEL version="${VERSION}" \
      environment="${ENVIRONMENT}" \
      debug_mode="${DEBUG_MODE}" \
      extra_arg="${EXTRA_ARG}" \
      another_arg="${ANOTHER_ARG}" \
      target_platform="${TARGETPLATFORM}" \
      target_os="${TARGETOS}" \
      target_arch="${TARGETARCH}" \
      build_platform="${BUILDPLATFORM}" \
      build_os="${BUILDOS}" \
      build_arch="${BUILDARCH}"

CMD ["/bin/bash"]
