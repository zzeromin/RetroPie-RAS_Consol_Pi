##ez_setup.sh
# Title        : Setup script of RetroPie-RAS_Consol_Pi
# Author       : zzeromin & zerocool member of Raspberrypi Village & raspigamer
# Creation Date: Nov 19, 2016
# Blog         : http://rasplay.org, http://forums.rasplay.org/, https://zzeromin.tumblr.com/
# Thanks to    : smyani, zerocool, superstar
# Free and open for all to use. But put credit where credit is due.
#
# How to Setup : 
# cd /home/pi
# git clone https://github.com/zzeromin/RetroPie-RAS_Consol_Pi.git
# cd /home/pi/RetroPie-RAS_Consol_Pi/
# chmod 755 ez_setup.sh
# sudo ./ez_setup.sh

cd /home/pi
git clone https://github.com/ipromiseyou/RetroPie-AutoSet.git
cd RetroPie-AutoSet
sed -i '/GPIO/d' 00.Install.sh
chmod 755 00.Install.sh
sudo ./00.Install.sh
echo "RetroPie-AutoSet Complete"
sleep 1
echo "RetroPie-Clcd setup is starting Now"
cd /home/pi
git clone https://github.com/zzeromin/RetroPie-Clcd.git
cd /home/pi/RetroPie-Clcd/
chmod 755 10.CLCD.sh
sudo ./10.CLCD.sh
