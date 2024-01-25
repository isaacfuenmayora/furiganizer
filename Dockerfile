FROM node:lts

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm install -g @vue/cli

RUN vue create furiganizer

WORKDIR /app/furiganizer

RUN npm run build

CMD [ "npm", "run", "serve" ]