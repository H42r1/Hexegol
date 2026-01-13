echo "---------------Création du dossier git_tools---------------\n"
mkdir ~/.exegol/my-resources/git_tools
sudo apt install git
echo "\n\n---------------fini---------------\n\n"

echo "---------------Ajout de penelope---------------"
git -C ~/.exegol/my-resources/git_tools clone https://github.com/brightio/penelope
ln -s /opt/my-resources/git_tools/penelope/penelope.py  ~/.exegol/my-resources/bin/penelope
chmod +x ~/.exegol/my-resources/git_tools/penelope/penelope.py
echo "\n\n---------------fini---------------\n\n"

echo "---------------Configuration de tmux---------------"
echo 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm' >> ~/.exegol/my-resources/setup/load_user_setup.sh
echo '~/.tmux/plugins/tpm/bin/install_plugins' >>  ~/.exegol/my-resources/setup/load_user_setup.sh
cp tmux.conf ~/.exegol/my-resources/setup/tmux/
#cp tmux.conf ~/.tmux.conf     #<--- Décommenter ça pour appliquer les configs sur l'hôte
echo "\n\n---------------fini---------------\n\n"

echo "---------------Ajout de burp---------------"
cp burp.sh ~/.exegol/my-resources/git_tools && cd ~/.exegol/my-resources/git_tools
chmod +x burp.sh && ./burp.sh
echo 'sudo update-alternatives --set java /usr/lib/jvm/java-21-openjdk/bin/java' >>  ~/.exegol/my-resources/setup/load_user_setup.sh
rm burp.sh && cd
echo "\n\n---------------fini---------------\n\n"
