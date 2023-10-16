FROM node:alpine

WORKDIR /app

COPY ./package.json ./

RUN npm install

COPY ./ /app

EXPOSE 3000
# Generate Prisma Client during container build
RUN npx prisma migrate dev

CMD ["npm", "start"]