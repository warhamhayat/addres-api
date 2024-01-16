FROM alpine:3.18

WORKDIR /app

COPY ./package.json ./

RUN npm install

# Install Prisma CLI
RUN npm install -g prisma

COPY ./ /app

EXPOSE 3000

CMD ["sh", "-c", "npx prisma generate && npm start"]