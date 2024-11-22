# Usa una imagen base de Node.js

FROM node:18

# Establece el directorio de trabajo dentro del contenedor

WORKDIR /app

# Copia el package.json y el package-lock.json

COPY package*.json ./

# Instala las dependencias

RUN npm install

# Copia el resto del código de la aplicación

COPY . .

# Expone el puerto en el que tu aplicación va a correr (por ejemplo, 3000)

EXPOSE 3000

# Comando para ejecutar la aplicación

CMD ["npm", "start"]