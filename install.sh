echo
tput bold; echo "     ████████╗ █████╗ ██╗   ██╗███████╗  ██████╗ ███═╗ ██╗"; tput sgr0
tput bold; echo "     ██╔═════╝██╔══██╗██║   ██║██╔═══██║██╔═══██╗████╚╗██║"; tput sgr0
tput bold; echo "     ████████╗███████║██║   ██║████████║██║   ██║██╗██║██║"; tput sgr0
tput bold; echo "     ╚═════██║██╔══██║██║   ██║██╔══██╔╝██║   ██║██║ ████║"; tput sgr0
tput bold; echo "     ████████║██║  ██║╚██████╔╝██║   ██╗╚██████╔╝██║   ██║"; tput sgr0
tput bold; echo "     ╚═══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝   ╚═╝ ╚═════╝ ╚═╝   ╚═╝"; tput sgr0
echo
echo "--------------------------------------------------------------"
echo "                      Installation v0.1"
echo "--------------------------------------------------------------"
echo

#  ------ START INSTALLATION -----
cd /tmp
tput setaf 6
echo "=> Cloning Sauron..."
tput init
echo ""
git clone git@github.com:AurelienEpitech/sauron.git
if [ $? -ne 0 ]; then
    tput setaf 1
    echo "=> Unable to clone Sauron."
    tput init
    tput setab 1
    echo "=> Installation failed."
    tput init
    exit 1
fi
tput setaf 2
echo "=> Cloned Sauron."
echo ""
tput setaf 6
echo "=> Copying source files..."
tput init
sudo rm -f /usr/local/bin/sauron
sudo cp -R sauron /usr/local/lib/sauron
sudo cp /usr/local/lib/sauron/sauron /usr/local/bin/sauron
tput setaf 2
echo "=> Copied source files."
tput init
# ------- END INSTALLATION -------

# ------ GIVING PERMS --------
echo ""
tput setaf 6
echo "=> Giving run permissions..."
tput init
sudo chmod -R 777 /usr/local/lib/sauron/sauron
sudo chmod 777 /usr/local/bin/sauron
if [ $? -ne 0 ]; then
    tput setaf 1
    echo "=> Unable to give run permissions."
    tput init
    tput setab 1
    echo "=> Installation failed."
    tput init
    exit 1
fi
tput init
tput setaf 2
echo "=> Permissions OK."
tput init
sudo rm -rf /tmp/sauron

tput setaf 2
echo "=> Installation complete."
tput init
exit 0