# Stage 1 — build
FROM node:22-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install --quiet
COPY . .
RUN npm run build

# Stage 2 — serve (nginx, non-root)
FROM nginx:1.27-alpine
RUN addgroup -S appgroup && adduser -S appuser -G appgroup \
    && chown -R appuser:appgroup /var/cache/nginx /var/run /var/log/nginx
COPY --from=build /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
USER appuser
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
