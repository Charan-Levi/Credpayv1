FROM node:22-alpine AS build
WORKDIR /app
COPY pacakage*.json .

RUN if [ -f pacakage-lock.json ]; then npm ci;else npm install ; fi

COPY . .

RUN npm run build

FROM nginx:alpine AS runtime
WORKDIR /app
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist /usr/share/nginx/html/
EXPOSE 80