# Kali Forensics Container

Imagen de contenedor basada en **Kali Linux Rolling**, especializada en **análisis forense y pentesting forense** con escritorio remoto MATE.

## Características

- Entorno de escritorio **MATE**.
- Acceso remoto vía **VNC** y **noVNC**.
- Herramientas incluidas:
  - **Kali Forensics**: herramientas de análisis de discos, memoria, redes y recuperación de datos.
  - Utilidades básicas: `curl`, `git`, `wget`, `nano`, `unzip`, `jq`, `net-tools`, `ping`.

## Variables de entorno

- `DEBIAN_FRONTEND=noninteractive` → evita prompts durante la instalación.
- `VNC_PASSWORD=kali` → contraseña por defecto para VNC.

## Puertos expuestos

- `5901` → VNC
- `6080` → noVNC (web)

## Uso

Construir la imagen:

```bash
docker build -t kali-forensics .
````

Ejecutar el contenedor:

```bash
docker run -d -p 5901:5901 -p 6080:6080 -e VNC_PASSWORD=password --name kali kali-forensics
```

Acceso al escritorio:

* VNC: `vnc://localhost:5901`
* Web: `http://localhost:6080`

## Scripts

* `/start.sh` → inicia el escritorio MATE con VNC y noVNC.

## Notas

* Cambiar la contraseña de VNC antes de usar en producción.
* Imagen orientada a **análisis forense digital** y pruebas de seguridad forense.
