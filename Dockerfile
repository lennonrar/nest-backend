# Base image
FROM node:20-alpine

# Diretório de trabalho dentro do contêiner
WORKDIR /workdir

# Copie os arquivos package.json e yarn.lock (ou package-lock.json)
COPY package*.json ./

# Instale as dependências do aplicativo
RUN npm install

# Copie o código-fonte do aplicativo
COPY . .

# Crie a pasta "dist" com a compilação de produção
RUN npm run build

# Comando para iniciar o servidor usando a compilação de produção
CMD ["node", "dist/main.js"]


# RUN mkdir -p /root/.ssh
# COPY ./ssh_keys /root/.ssh/
# RUN chmod 600 /root/.ssh
