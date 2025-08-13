FROM nginx:alpine

# self-contained page (no site/ folder needed)
RUN printf '<!doctype html><html><head><meta charset="utf-8"><title>NGINX via GitHub Actions</title></head><body><h1>✅ It works!</h1><p>Built & pushed from GitHub Actions.</p></body></html>' > /usr/share/nginx/html/index.html

EXPOSE 80
