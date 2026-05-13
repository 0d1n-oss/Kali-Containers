# Proyecto Kali Containers

Este proyecto consiste en un conjunto de **contenedores Docker basados en Kali Linux Rolling**, diseñados para distintos aspectos de **ciberseguridad y pentesting**. Cada contenedor está especializado en un área específica, con herramientas preinstaladas y configuradas para facilitar su uso en laboratorios o entornos de práctica.

---

## **Objetivo del proyecto**

Proveer un entorno modular y portable de Kali Linux, que permita a investigadores de seguridad, pentesters y entusiastas de ciberseguridad:

- Ejecutar herramientas de forma aislada sin alterar el sistema host.
- Acceder a escritorios remotos vía **VNC** o navegador web usando **noVNC**.
- Disponer de contenedores especializados según la disciplina de ciberseguridad: pentesting general, bug bounty, forense digital y redes.

---

## **Contenedores disponibles**

| Imagen | Propósito | Escritorio | Herramientas principales |
|--------|-----------|-----------|-------------------------|
| `kali-pentest` | Pentesting general | XFCE | nmap, gobuster, ffuf, sqlmap, nikto, subfinder, httpx-toolkit, Impacket scripts |
| `kali-bugbounty` | Bug bounty / Web | LXDE | nmap, gobuster, dirsearch, ffuf, nikto, sqlmap, subfinder, assetfinder, amass, httprobe, burpsuite, zaproxy, hydra, john, hashcat, Python & Go tools |
| `kali-forensics` | Análisis forense | MATE | Kali Forensics meta-package (análisis de discos, memoria y redes), curl, git, wget, nano, unzip |
| `kali-networks` | Pentesting de redes | XFCE | nmap, netdiscover, hping3, wireshark, tcpdump, ettercap-graphical, bettercap, aircrack-ng, macchanger, nikto |

---

## **Características comunes**

- **Acceso remoto:** VNC (`5901`) y noVNC (`6080`).  
- **Contraseña VNC por defecto:** `kali` (recomendado cambiar en producción).  
- **Escritorio ligero:** XFCE, LXDE o MATE según contenedor.  
- **Actualizaciones y limpieza:** Cada contenedor se construye con los últimos paquetes de Kali Rolling y elimina caches de instalación para optimizar tamaño.

