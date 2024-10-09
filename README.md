# Exemples Pascal : Calculatrice et Gestion de Contacts

Ce dépôt GitHub contient deux exemples simples de programmes en Pascal : une calculatrice et une application de gestion de contacts. Ces programmes sont conçus pour illustrer les concepts de base de la programmation en Pascal.

## Contenu du dépôt

- `Calculatrice.pas` : Un programme simple de calculatrice qui permet d'effectuer des opérations de base (addition, soustraction, multiplication, division).
- `GestionContacts.pas` : Une application de gestion de contacts qui permet d'ajouter, afficher et rechercher des contacts.

## Prérequis

Pour compiler et exécuter ces programmes, vous devez avoir installé le compilateur Free Pascal (FPC) sur votre système.

### Installation de Free Pascal sur Debian

1. Mettez à jour la liste des paquets disponibles :
   ```sh
   sudo apt update
   ```

2. Installez Free Pascal Compiler :
   ```sh
   sudo apt install fpc
   ```

3. Vérifiez l'installation :
   ```sh
   fpc -v
   ```

## Compilation et exécution

### Calculatrice

1. Compilez le programme `Calculatrice.pas` :
   ```sh
   fpc Calculatrice.pas
   ```

2. Exécutez le programme :
   ```sh
   ./Calculatrice
   ```

### Gestion de Contacts

1. Compilez le programme `GestionContacts.pas` :
   ```sh
   fpc GestionContacts.pas
   ```

2. Exécutez le programme :
   ```sh
   ./GestionContacts
   ```

## Fichiers intermédiaires

Lors de la compilation, Free Pascal génère un fichier objet (`.o`) en plus du fichier exécutable. Ce fichier objet contient le code machine généré à partir de votre code source Pascal.

### Fichier objet (`.o`)

Le fichier objet (`.o`) est un fichier binaire intermédiaire qui n'est pas destiné à être lu ou modifié directement par un humain. Cependant, il existe des outils qui peuvent être utilisés pour inspecter son contenu.

#### Outils pour inspecter le fichier objet

1. **Objdump** : Un outil de ligne de commande pour afficher des informations sur les fichiers objets et les exécutables.
   ```sh
   objdump -d Calculatrice.o
   ```

2. **nm** : Affiche les symboles définis dans un fichier objet.
   ```sh
   nm Calculatrice.o
   ```

3. **GDB (GNU Debugger)** : Un débogueur puissant qui peut être utilisé pour inspecter le contenu d'un fichier objet.
   ```sh
   gdb Calculatrice.o
   ```

4. **Hex Editor** : Un éditeur hexadécimal pour visualiser les données brutes d'un fichier.
   ```sh
   hexdump Calculatrice.o
   ```

## Conclusion

Ce dépôt fournit des exemples simples de programmes en Pascal pour illustrer les concepts de base de la programmation. En suivant les instructions de compilation et d'exécution, vous pouvez facilement tester ces programmes sur votre système. Les fichiers objets géXnérés lors de la compilation peuvent être inspectés à l'aide d'outils spécifiques pour comprendre leur contenu.
