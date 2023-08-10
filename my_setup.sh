#!/bin/bash

echo "#########################################"
echo " Running MySetup and installing packages"
echo "#########################################"

echo "[*] Running the essentials..."
sudo apt update && sudo apt upgrade -y
sudo apt install flatpak git snapd wget curl python3 nano -y

echo "[*] seting up your machine..."

echo "[*] installing editors.."
sudo flatpak install cherrytree gedit neovim code libreoffice -y

echo "[*] instaling proxy and network tools.."
sudo flatpak install zap wireshark openvpn -y
sudo apt install macchanger proxychains4 nmap -y

echo "[*] installing mail and browers.."
sudo flatpak install firefox thunderbird -y

echo "[*] installing virtualization software.."
sudo flatpak install boxes -y

echo "[*] installing password manager, video player, gnome extensions tool"
sudo flatpak install extensions bitwarden vlc -y

echo "[#] done the installation"
echo "installed packages :"
echo "1. flatpak\n 2. git\n 3. snapd\n 4. wget\n 5. curl\n 6. python3\n 7. nano\n 8. cherrytree\n
		9. gedit\n 10. neovim\n 11. vscode\n 12. libreoffice\n 13. zap\n 14. wireshark\n 15. openvpn\n
		16. macchanger\n 17. proxychains4\n 18. nmap\n 19. firefox\n 20. thunderbird\n 21. boxes\n
		22. gnome extensions\n 23. bitwarden\n 24. VLC\n"
