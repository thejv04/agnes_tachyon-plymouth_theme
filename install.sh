#!/bin/bash

# **************************************************************************
#
# Copyright (C) 2025 Javier Ignacio
# https://github.com/thejv04
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#
# **************************************************************************

THEME_NAME="agnes_tachyon"
THEME_DIR="/usr/share/plymouth/themes/$THEME_NAME"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo ""
echo "  Agnes Tachyon - Plymouth Theme Installer"
echo "  https://github.com/thejv04/agnes_tachyon_plymouth_theme"
echo ""

if [ "$EUID" -ne 0 ]; then
    echo -e "${RED}[ERROR]${NC} This script must run as root."
    echo "        Use: sudo bash install.sh"
    echo ""
    exit 1
fi

echo -e "${YELLOW}[*]${NC} Installing theme in $THEME_DIR..."

mkdir -p "$THEME_DIR"
cp -r ./* "$THEME_DIR/"

if [ $? -ne 0 ]; then
    echo -e "${RED}[ERROR]${NC} Failed to copy files."
    exit 1
fi

echo -e "${GREEN}[OK]${NC} Files copied successfully."

echo -e "${YELLOW}[*]${NC} Activating theme..."

plymouth-set-default-theme -R "$THEME_NAME"

if [ $? -ne 0 ]; then
    echo -e "${RED}[ERROR]${NC} The theme could not be activated. Verify that plymouth is installed."
    exit 1
fi

echo -e "${GREEN}[OK]${NC} Theme Activated Successfully."
echo ""
echo -e "${GREEN}Listo!${NC} The Agnes Tachyon theme will be applied in the next start."
echo ""