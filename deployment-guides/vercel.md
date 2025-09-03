# Vercel Deployment
# File: vercel.json
{
  "builds": [
    {
      "src": "nuxt.config.ts",
      "use": "@nuxtjs/vercel-builder"
    }
  ]
}

# Commands:
# npm i -g vercel
# vercel --prod
