cd /tmp && git clone git@github.com:AurelienEpitech/sauron.git

if diff /tmp/sauron/sauron /usr/local/bin/sauron  >/dev/null; then
rm -rf /tmp/sauron
tput setaf 2
echo "Sauron is already up to date."
tput init
else
tput setaf 6
echo "=> Copying new version..."
tput init
sudo rm -f /usr/local/bin/sauron
sudo rm -rf /usr/local/lib/sauron
sudo cp /tmp/sauron/sauron /usr/local/bin/sauron
sudo cp /tmp/sauron /usr/local/bin/sauron
sudo cp -R /tmp/sauron /usr/local/lib/sauron
rm -rf /tmp/sauron
tput setaf 2
echo "=> Installation complete."
tput init
fi
exit 0