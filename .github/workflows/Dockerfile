FROM nginx:alpine
# Write a minimal index.html directly into the image
RUN printf '<!doctype html><html><head><meta charset="utf-8"><title>NGINX via GitHub Actions</title></head><body><h1>✅ It works!</h1><p>Built & pushed from GitHub Actions.</p></body></html>' > /usr/share/nginx/html/index.html
HEALTHCHECK CMD wget -qO- http://localhost:80/ >/dev/null || exit 1
EXPOSE 80