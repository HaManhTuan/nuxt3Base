# Azure Container Instances
az container create \
  --resource-group myResourceGroup \
  --name nuxt-app \
  --image ghcr.io/hamantuan/nuxt3base:latest \
  --cpu 1 \
  --memory 1 \
  --ports 3000 \
  --dns-name-label nuxt-app-unique \
  --environment-variables NUXT_HOST=0.0.0.0 NUXT_PORT=3000
