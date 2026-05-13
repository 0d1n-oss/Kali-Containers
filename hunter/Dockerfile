FROM kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive
ENV VNC_PASSWORD=kali

# Herramientas de sistema
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    kali-desktop-lxde xorg dbus-x11 \
    tightvncserver novnc websockify \
    && apt-get clean

# Herramientas base de bug bounty
RUN apt-get install -y \
    curl \
    git \
    wget \
    python3 \
    python3-pip \
    pipx \
    unzip \
    nano \
    ca-certificates

# Recon & Web tools
RUN apt-get install -y \
    nmap \
    dnsutils \
    whois \
    whatweb \
    gobuster \
    dirsearch \
    nikto \
    ffuf \
    sqlmap \
    assetfinder \
    subfinder \
    amass \
    httprobe \
    masscan

# Tools de análisis web
RUN apt-get install -y \
    burpsuite \
    zaproxy

# Cracking / auth testing
RUN apt-get install -y \
    hydra \
    john \
    hashcat

# Python tools comunes en bug bounty
RUN pip3 install --no-cache-dir --break-system-packages \
    requests \
    beautifulsoup4 \
    httpx \
    lxml \
    asyncio \
    aiohttp

# Go tools (muy usados en bug bounty)
RUN apt-get install -y golang

ENV GOPATH=/root/go
ENV PATH=$PATH:/root/go/bin

RUN go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest && \
    go install github.com/projectdiscovery/httpx/cmd/httpx@latest && \
    go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest && \
    go install github.com/tomnomnom/assetfinder@latest

# limpiar
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Crear directorio VNC
RUN mkdir -p /root/.vnc

# Script de inicio
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 5901 6080

CMD ["/start.sh"]
