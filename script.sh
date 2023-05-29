#!/bin/bash

# Étape 1 : Désactiver l'écran de démarrage graphique
sudo systemctl set-default multi-user.target

# Étape 2 : Désactiver les sessions utilisateur automatiques
sudo sed -i 's/autologin-user=/#autologin-user=/g' /etc/lightdm/lightdm.conf

# Étape 3 : Configurer le démarrage automatique de l'application
sudo sed -i '$i java -jar /chemin_vers_votre_application.jar &' /etc/rc.local

# Étape 4 : Définir les permissions du fichier de l'application
sudo chmod 500 /chemin_vers_votre_application.jar

# Redémarrer la Raspberry Pi pour que les changements prennent effet
sudo reboot