FROM node:20

WORKDIR /lgpdchecklistapi

# Instala dependências
COPY package*.json ./
RUN npm install

# Copia o Prisma e gera o client
COPY prisma ./prisma/ 
RUN npx prisma generate

# Copia o restante do código
COPY . .

# Faz o build (compila TS e resolve os aliases com tsc-alias)
RUN npm run build

# Remove dependências de dev para economizar espaço
RUN npm prune --production

EXPOSE 8045

# O comando de start já está no seu package.json
CMD ["npm", "run", "start"]