# Google Cloud Run Deployment
# Deploy command:
gcloud run deploy nuxt-app \
  --image ghcr.io/hamantuan/nuxt3base:latest \
  --platform managed \
  --region asia-southeast1 \
  --allow-unauthenticated \
  --port 3000 \
  --memory 512Mi \
  --cpu 1 \
  --max-instances 10 \
  --set-env-vars NUXT_HOST=0.0.0.0,NUXT_PORT=3000
