FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive
ENV VNC_PASSWORD=kali

# Herramientas de sistema
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    kali-desktop-mate xorg dbus-x11 \
    tightvncserver novnc websockify \
    && apt-get clean

# Herramientas de pentesting
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    curl git wget nano unzip jq net-tools iputils-ping \
    kali-tools-forensics \
    && apt-get clean

# Crear directorio VNC
RUN mkdir -p /root/.vnc

# Script de inicio
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 5901 6080

CMD ["/start.sh"]
