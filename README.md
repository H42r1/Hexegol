# Hexegol

## Utiliser auto_run.sh si flemme.

## Git-tools

Ajouter un dossier `git_tools` dans le répertoire `~/.exegol/my-resources`. Ce dossier contiendra tous les outils utiles trouvés sur github.com

#### Liste des repos actuels

```txt
https://github.com/brightio/penelope
```

#### Gérer les alias

```txt
ln -s ../git_tools/penelope/penelope.py ~/.exegol/my-resources/bin/penelope
chmod +x ~/.exegol/my-resources/git_tools/penelope/penelope.py
```

## tmux

Dans `~/.exegol/my-resources/setup`, ajouter :

```txt
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins
```
Sur la machine hôte, il faut que xsel soit installé.

```txt
sudo apt install xsel
```

Créer un fichier `~/.exegol/my-resources/setup/tmux/tmux.conf` et ajouter cette config :

```txt
# --- configs perso ---
set-window-option -g mode-keys vi

# --- Configuration TPM ---
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-yank'

# Initialisation TPM
run '~/.tmux/plugins/tpm/tpm'

# --- Ajout du thème ---
set -g @plugin 'uhs-robert/tmux-oasis'
set -g @oasis_flavor "lagoon_dark"

# --- COnfiguration de la souris ---
set -g mouse on
```
