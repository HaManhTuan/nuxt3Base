# GitHub Secrets cần thiết cho CI/CD

## Repository Secrets (GitHub Settings → Secrets)

### For Docker Registry (GitHub Container Registry)
GITHUB_TOKEN (tự động có sẵn)

### For Server Deployment
SERVER_HOST=your.server.ip.address
SERVER_USER=your_server_username  
SERVER_SSH_KEY=your_private_ssh_key

### Environment Variables
RESEND_API_KEY=your_production_resend_api_key

## Repository Variables (GitHub Settings → Variables)
REGISTRY_URL=ghcr.io
IMAGE_NAME=nuxt3base
