# Usa la imagen base de Node.js
FROM node:18

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de dependencias al directorio de trabajo
COPY app/package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto de los archivos de la aplicación al directorio de trabajo
COPY app .

# Construye la aplicación Nuxt.js
RUN npm run build

# Expone el puerto 3000 para acceder a la aplicación
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "run", "start"]