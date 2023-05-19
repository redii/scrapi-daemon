FROM node:16.15.1-alpine
ENV NODE_ENV "production"
ENV DATABASE_URL "file:/data/db.sqlite"
ENV FILES_PATH "/data/files"

COPY . /app
WORKDIR /app
RUN npm install
RUN npx prisma generate
CMD node index.mjs