# Simple NGINX image that serves ./site contents
FROM nginx:alpine

# Copy website files from the repo (build context is repo root)
COPY site/ /usr/share/nginx/html/

# Optional: healthcheck
HEALTHCHECK CMD wget -qO- http://localhost:80/ >/dev/null || exit 1

EXPOSE 80