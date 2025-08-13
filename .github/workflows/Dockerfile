name: Docker build & push
on: push

env:
  IMAGE_NAME: github-actions.nginx

jobs:
  docker:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Login to Docker Hub
        uses: docker/login-action@v3
        with:
          username: ${{ vars.DOCKERHUB_USERNAME }}
          password: ${{ secrets.DOCKERHUB_TOKEN }}

      - uses: docker/setup-buildx-action@v3

      - name: Sanity check files
        run: |
          pwd
          ls -la
          ls -la .github/workflows
          test -f .github/workflows/Dockerfile || (echo "Missing .github/workflows/Dockerfile" && exit 1)

      - name: Build and push
        uses: docker/build-push-action@v6
        with:
          context: .github/workflows      # build context = folder where the Dockerfile is
          file: Dockerfile                # relative to context above
          push: true
          tags: |
            ${{ vars.DOCKERHUB_USERNAME }}/${{ env.IMAGE_NAME }}:latest
            ${{ vars.DOCKERHUB_USERNAME }}/${{ env.IMAGE_NAME }}:${{ github.sha }}
