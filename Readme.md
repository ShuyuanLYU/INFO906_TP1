# TP1 Déploiement d'applications

Par LYU Shuyuan et OMNES Nathanaël

Ce projet a été réalisé pour montrer nos connaissances dans l'utilisation d'une application web java et d'EJB.


Vous pouvez :
- Créer des colis
- Visualiser tous les colis créés
- Visualiser un seul colis
- Éditer un colis


## Pour Lancer le projet

### Démarrer la base de données Glassfish 
Dans le dossier où se trouve votre serveur Glassfish, exécutez l'une des commandes suivantes :

- Windows
```bash
> bin\asadmin.bat start-database
```
- Linux / Mac dans un terminal
```
> ./bin/asadmin start-database
```

### Démarrer glassfish avec le bon artéfact
Utiliser l'artéfact `ColisEar.ear`

puis connectez vous à la bonne URL, par exemple:

http://localhost:8080/ColisWeb/

## Documentation :

JaveEE 8
- Doc : https://javaee.github.io/glassfish/documentation
- Tutoriel : https://javaee.github.io/tutorial/
- API (javadodc : https://javaee.github.io/javaee-spec/javadocs/
- Spécifications : https://www.oracle.com/technetwork/java/javaee/tech/java-ee-8-3890673.html