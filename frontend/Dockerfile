FROM node

WORKDIR /app/frontend
COPY package.json package-lock.json /app/frontend/

RUN npm install

EXPOSE 3000
CMD ["npm", "start"]
