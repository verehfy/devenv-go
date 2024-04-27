FROM golang:1.21

# Install kubectl
RUN curl -LO https://dl.k8s.io/release/v1.29.0/bin/linux/amd64/kubectl
RUN echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Install Helm
RUN curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

CMD exec /bin/sh -c "while sleep 1000; do :; done"
