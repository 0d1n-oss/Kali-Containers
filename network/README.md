# Kali Networks Container

Imagen de contenedor basada en **Kali Linux Rolling**, especializada en **pentesting de redes, auditoría Wi-Fi y análisis de tráfico** con escritorio remoto XFCE.

## Características

- Entorno de escritorio **XFCE** ligero.
- Acceso remoto vía **VNC** y **noVNC**.
- Herramientas incluidas para pruebas de redes y seguridad:
  - **Escaneo de red y hosts**: `nmap`, `netdiscover`, `hping3`
  - **Análisis de tráfico y sniffing**: `wireshark`, `tcpdump`
  - **Ataques MITM / manipulación de tráfico**: `ettercap-graphical`, `bettercap`
  - **Auditoría de redes Wi-Fi**: `aircrack-ng`, `macchanger`
  - **Escaneo de servicios web básicos**: `nikto`
  - **Utilidades de sistema**: `curl`, `git`, `wget`, `nano`, `unzip`, `jq`, `net-tools`, `ping`

## Variables de entorno

- `DEBIAN_FRONTEND=noninteractive` → evita prompts durante la instalación.  
- `VNC_PASSWORD=kali` → contraseña por defecto para VNC.

## Puertos expuestos

- `5901` → VNC  
- `6080` → noVNC (acceso vía navegador web)

## Uso

### Construir la imagen

```bash
docker build -t kali-networks .
````

### Ejecutar el contenedor

```bash
docker run -d -p 5901:5901 -p 6080:6080 -e VNC_PASSWORD=password --name kali-networks kali-networks
```

### Acceso al escritorio

* **VNC:** `vnc://localhost:5901`
* **Web (noVNC):** `http://localhost:6080`

## Scripts

* `/start.sh` → inicia el escritorio XFCE con VNC y noVNC.

  * Configura el servidor VNC y permite acceso remoto al escritorio.

## Notas

* Cambiar la contraseña de VNC antes de usar en producción.
* Imagen ideal para:

  * Auditoría de redes internas y externas
  * Pentesting Wi-Fi
  * Análisis de tráfico y ataques MITM en entornos controlados
* Mantener en entornos aislados si se realizan pruebas en redes externas.


