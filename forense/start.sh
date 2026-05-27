#!/bin/bash

export USER=root
export HOME=/root
export DISPLAY=:1

# Crear contraseña VNC en runtime
mkdir -p /root/.vnc
echo "$VNC_PASSWORD" | vncpasswd -f > /root/.vnc/passwd
chmod 600 /root/.vnc/passwd

# Configurar entorno gráfico para MATE

cat << 'EOF' > /root/.vnc/xstartup
#!/bin/bash

# entorno básico
export DISPLAY=:1
export USER=root

# iniciar Mate
mate-session

EOF

chmod +x /root/.vnc/xstartup

# Limpiar sesiones VNC anteriores si existen
vncserver -kill :1 > /dev/null 2>&1

rm /tmp/.X1-lock
rm /tmp/.X11-unix/X1

# Iniciar VNC
vncserver :1 -geometry 1280x800 -depth 24

# Iniciar noVNC
websockify --web=/usr/share/novnc/ 6080 localhost:5901
