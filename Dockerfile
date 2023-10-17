FROM node:18

WORKDIR /app

COPY ./package.json ./

RUN npm install

# Install Prisma CLI
RUN npm install -g prisma

COPY ./ /app

RUN prisma generate

EXPOSE 3000

CMD ["sh", "-c", "npx prisma migrate dev && npm start"]