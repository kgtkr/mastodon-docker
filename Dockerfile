FROM tootsuite/mastodon:v4.1.4

USER root
RUN apt-get install -y patch
USER mastodon

COPY --chown=mastodon:mastodon ./mastodon.patch /opt/mastodon.patch
RUN patch -p1 -d /opt/mastodon < /opt/mastodon.patch
