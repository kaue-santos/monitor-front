# Imagem de Origem
FROM node:19-alpine
# Diretório de trabalho(é uma aplicação fixada dentro do container). 
WORKDIR /usr/app
# Adicionando `/app/node_modules/.bin` para o $PATH
ENV PATH /usr/app/node_modules/.bin:$PATH
# Instalando dependências da aplicação e armazenando em cache. 
COPY package*.json ./ 
RUN npm install --force 
COPY . .
# Inicializa uma aplicação
CMD ["npm", "start"]

EXPOSE 3000