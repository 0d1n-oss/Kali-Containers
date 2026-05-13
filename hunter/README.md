# Kali Bug Bounty Container

Imagen de contenedor basada en **Kali Linux Rolling** especializada para **bug bounty, web pentesting y reconocimiento** con escritorio remoto LXDE.

## Características

- Entorno de escritorio **LXDE** ligero.
- Acceso remoto vía **VNC** y **noVNC**.
- Herramientas esenciales para bug bounty y pentesting:
  - **Reconocimiento y subdominios**: `nmap`, `whois`, `dnsutils`, `whatweb`, `gobuster`, `dirsearch`, `ffuf`, `assetfinder`, `subfinder`, `amass`, `httprobe`, `masscan`
  - **Análisis web**: `burpsuite`, `zaproxy`, `nikto`, `sqlmap`
  - **Cracking y auth testing**: `hydra`, `john`, `hashcat`
  - **Python tools**: `requests`, `beautifulsoup4`, `httpx`, `lxml`, `asyncio`, `aiohttp`
  - **Go tools**: `subfinder`, `httpx`, `naabu`, `assetfinder`

## Variables de entorno

- `DEBIAN_FRONTEND=noninteractive` → evita prompts durante la instalación.
- `VNC_PASSWORD=kali` → contraseña por defecto para VNC.

## Puertos expuestos

- `5901` → VNC
- `6080` → noVNC (web)

## Uso

Construir la imagen:

```bash
docker build -t kali-bugbounty .
````

Ejecutar el contenedor:

```bash
docker run -d -p 5901:5901 -p 6080:6080 -e VNC_PASSWORD=password --name kali kali-bugbounty
```

Accede al escritorio:

* VNC: `vnc://localhost:5901`
* Web: `http://localhost:6080`

## Scripts

* `/start.sh` → inicia el escritorio LXDE con VNC y noVNC.

## Notas

* Se recomienda cambiar la contraseña VNC antes de uso en producción.
* Imagen optimizada para **bug bounty y web pentesting**.
