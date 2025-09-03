# Netlify Deployment
# File: netlify.toml
[build]
  command = "npm run build"
  publish = ".output/public"

[[redirects]]
  from = "/*"
  to = "/.netlify/functions/server"
  status = 200

# Auto deploy từ GitHub
