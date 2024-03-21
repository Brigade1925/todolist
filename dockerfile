# Utilisez l'image officielle de Node.js pour construire votre application
FROM node:20-alpine

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez le reste des fichiers de l'application
COPY . .

# Construisez votre application Next.js pour la production
RUN npm run build

# Exposez le port 3000 sur le conteneur
EXPOSE 3000

# Démarrez votre application Next.js
CMD ["npm", "start"]