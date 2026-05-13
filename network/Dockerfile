# ==========================
# Kali Linux - Redes
# ==========================

FROM kalilinux/kali-rolling

# Variables de entorno
ENV DEBIAN_FRONTEND=noninteractive
ENV VNC_PASSWORD=kali

# ==========================
# Herramientas del sistema y escritorio
# ==========================
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    kali-desktop-xfce4 xorg dbus-x11 \
    tightvncserver novnc websockify \
    curl git wget nano unzip jq net-tools iputils-ping \
    && apt-get clean

# ==========================
# Herramientas de redes y pentesting
# ==========================
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    nmap \
    wireshark \
    tcpdump \
    ettercap-graphical \
    aircrack-ng \
    bettercap \
    netdiscover \
    macchanger \
    hping3 \
    nikto \
    && apt-get clean

# ==========================
# Crear directorio VNC
# ==========================
RUN mkdir -p /root/.vnc

# ==========================
# Script de inicio
# ==========================
COPY start.sh /start.sh
RUN chmod +x /start.sh

# ==========================
# Puertos expuestos
# ==========================
EXPOSE 5901 6080

# ==========================
# Comando por defecto
# ==========================
CMD ["/start.sh"]
