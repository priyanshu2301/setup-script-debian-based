#!/bin/bash

echo "###################################"
echo "uninstalling the My Setup packages"
echo "###################################"

echo "[*] Running the essentials..."
sudo apt remove git snapd wget curl python3 nano -y

echo "[*] seting up your machine..."

echo "[*] uninstalling editors.."
sudo flatpak uninstall cherrytree gedit neovim code libreoffice -y

echo "[*] uninstalling proxy and network tools.."
sudo flatpak uninstall zap wireshark openvpn -y
sudo apt remove macchanger proxychains4 nmap -y

echo "[*] uninstalling mail and browers.."
sudo flatpak uninstall firefox thunderbird -y

echo "[*] uninstalling virtualization software.."
sudo flatpak uninstall boxes -y

echo "[*] uninstalling password manager, video player, gnome extensions tool"
sudo flatpak uninstall extensions bitwarden vlc -y

sudo apt remove flatpak -y
sudo apt autoremove -y
sudo apt update && sudo apt upgrade -y

echo "[#] uninstalled my setup packages!"
echo "packages removed:"
echo "1. flatpak\n 2. git\n 3. snapd\n 4. wget\n 5. curl\n 6. python3\n 7. nano\n 8. cherrytree\n
		9. gedit\n 10. neovim\n 11. vscode\n 12. libreoffice\n 13. zap\n 14. wireshark\n 15. openvpn\n
		16. macchanger\n 17. proxychains4\n 18. nmap\n 19. firefox\n 20. thunderbird\n 21. boxes\n
		22. gnome extensions\n 23. bitwarden\n 24. VLC\n"
