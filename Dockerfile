FROM cypress/base:latest
USER root
RUN \
  apt-get update && \
  apt-get install -y dbus-x11 zip
COPY *.deb /
RUN apt-get install -y ./chrome64_66.0.3359.181.deb
ENV DBUS_SESSION_BUS_ADDRESS=/dev/null
RUN google-chrome --version
RUN zip --version
RUN git --version
