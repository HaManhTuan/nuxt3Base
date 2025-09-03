# Multi-stage build for Nuxt 3 with Bun
FROM oven/bun:1 as dependencies
WORKDIR /app
COPY package.json bun.lockb ./
RUN bun install --frozen-lockfile

FROM oven/bun:1 as build
WORKDIR /app
COPY . .
COPY --from=dependencies /app/node_modules ./node_modules
RUN bun run build

FROM node:18-alpine as runtime
WORKDIR /app

# Copy the built application
COPY --from=build /app/.output ./

# Expose port
EXPOSE 3000

# Set environment variables
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

# Start the application
CMD ["node", "server/index.mjs"]
