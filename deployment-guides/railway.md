# Railway Deployment
# File: railway.toml
[build]
  builder = "NIXPACKS"

[deploy]
  startCommand = "node .output/server/index.mjs"

# Environment Variables in Railway Dashboard:
# NODE_ENV=production
# NUXT_HOST=0.0.0.0
# NUXT_PORT=$PORT
