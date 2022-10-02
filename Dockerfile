FROM node:latest
WORKDIR /app
COPY . .
COPY backend/package.json /app/backend
RUN npm i /app/backend
COPY frontend/package.json /app/frontend
RUN npm i /app/frontend
RUN cp -r frontend/build/ backend/public
EXPOSE 8000