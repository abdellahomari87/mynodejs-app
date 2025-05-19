# Étape 1 : Image de base officielle
FROM public.ecr.aws/docker/library/node:18

# Étape 2 : Créer le répertoire de travail
WORKDIR /usr/src/app

# Étape 3 : Copier les fichiers de dépendances
COPY package*.json ./

# Étape 4 : Installer les dépendances
RUN npm install

# Étape 5 : Copier le reste du code
COPY . .

# Étape 6 : Exposer le port (ajuste si ton app utilise un autre port)
EXPOSE 3000

# Étape 7 : Commande de démarrage
CMD [ "node", "app.js" ]
