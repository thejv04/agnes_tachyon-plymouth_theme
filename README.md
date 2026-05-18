# Agnes Tachyon — Plymouth Theme

![preview](preview.gif)

---

**Language / Idioma**

[🇺🇸 English](#english) · [🇪🇸 Español](#español)

---

## English

### Requirements

- Plymouth installed on your system
- Root/sudo access

### Installation

#### Ubuntu / Debian

1. Install Plymouth if you don't have it:
```bash
sudo apt install plymouth plymouth-themes
```

2. Clone the repository:
```bash
git clone https://github.com/thejv04/agnes_tachyon_plymouth_theme.git
cd agnes_tachyon_plymouth_theme
```

3. Run the installer:
```bash
sudo bash install.sh
```

The installer will copy the theme files and activate it automatically. The theme will be applied on the next boot.

---

#### Arch Linux / Manjaro

1. Install Plymouth if you don't have it:
```bash
sudo pacman -S plymouth
```

2. Make sure Plymouth is enabled in your bootloader. Edit `/etc/mkinitcpio.conf` and add `plymouth` to the HOOKS array:
```
HOOKS=(base udev plymouth ...)
```

3. Clone the repository:
```bash
git clone https://github.com/thejv04/agnes_tachyon_plymouth_theme.git
cd agnes_tachyon_plymouth_theme
```

4. Run the installer:
```bash
sudo bash install.sh
```

5. Rebuild the initramfs:
```bash
sudo mkinitcpio -P
```

The theme will be applied on the next boot.

---

### Manual Installation

If the installer doesn't work for your setup, you can install it manually:

```bash
sudo cp -r . /usr/share/plymouth/themes/agnes_tachyon
sudo plymouth-set-default-theme -R agnes_tachyon
```

### Uninstall

```bash
sudo rm -rf /usr/share/plymouth/themes/agnes_tachyon
sudo plymouth-set-default-theme -R default
```

---

## Español

### Requisitos

- Plymouth instalado en tu sistema
- Acceso root/sudo

### Instalación

#### Ubuntu / Debian

1. Instala Plymouth si no lo tienes:
```bash
sudo apt install plymouth plymouth-themes
```

2. Clona el repositorio:
```bash
git clone https://github.com/thejv04/agnes_tachyon_plymouth_theme.git
cd agnes_tachyon_plymouth_theme
```

3. Ejecuta el instalador:
```bash
sudo bash install.sh
```

El instalador copiará los archivos del tema y lo activará automáticamente. El tema se aplicará en el próximo inicio.

---

#### Arch Linux / Manjaro

1. Instala Plymouth si no lo tienes:
```bash
sudo pacman -S plymouth
```

2. Asegúrate de que Plymouth esté habilitado en tu bootloader. Edita `/etc/mkinitcpio.conf` y agrega `plymouth` al array HOOKS:
```
HOOKS=(base udev plymouth ...)
```

3. Clona el repositorio:
```bash
git clone https://github.com/thejv04/agnes_tachyon_plymouth_theme.git
cd agnes_tachyon_plymouth_theme
```

4. Ejecuta el instalador:
```bash
sudo bash install.sh
```

5. Reconstruye el initramfs:
```bash
sudo mkinitcpio -P
```

El tema se aplicará en el próximo inicio.

---

### Instalación manual

Si el instalador no funciona en tu sistema, puedes instalarlo manualmente:

```bash
sudo cp -r . /usr/share/plymouth/themes/agnes_tachyon
sudo plymouth-set-default-theme -R agnes_tachyon
```

### Desinstalar

```bash
sudo rm -rf /usr/share/plymouth/themes/agnes_tachyon
sudo plymouth-set-default-theme -R default
```

---

## License / Licencia

Copyright (C) 2025 Javier Ignacio  
Licensed under the [GNU General Public License v3.0](LICENSE).
