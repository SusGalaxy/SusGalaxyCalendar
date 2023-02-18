sudo apt update -y
sudo apt full-upgrade -y
sudo apt install -y yad git wget 

mkdir $HOME/susgalaxyapps
cd $HOME/susgalaxyapps
mkdir ./calendar
cd calendar
wget https://raw.githubusercontent.com/SusGalaxy/SusGalaxyCalendar/main/gui
wget https://github.com/SusGalaxy/SusGalaxyCalendar/raw/main/susgalaxy.png

mkdir -p ~/.local/share/applications
echo "[Desktop Entry]
Name=Sus Galaxy Calendar
Comment=Calendar GUI for Linux
Exec=$HOME/susgalaxyapps/calendar/gui.sh
Icon=$HOME/susgalaxyapps/calendar/susgalaxy.png
Terminal=false
StartupWMClass=Sus-Galaxy-Calendar
Type=Application
Categories=Utility;
StartupNotify=true" > ~/.local/share/applications/susgalaxycalendar.desktop
chmod 755 ~/.local/share/applications/susgalaxycalendar.desktop

#copy menu button to Desktop
cp -f ~/.local/share/applications/susgalaxycalendar.desktop ~/Desktop

chmod 755 ~/Desktop/susgalaxycalendar.desktop

rm $HOME/installer.sh
