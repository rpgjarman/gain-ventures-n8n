FROM n8nio/n8n:latest

# Set working directory
WORKDIR /data

# Set environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=GainVentures2025!
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://gain-ventures-n8n.onrender.com/

# Create n8n directory
RUN mkdir -p /home/node/.n8n

# Expose port
EXPOSE 5678

# Use the correct entrypoint
ENTRYPOINT ["tini", "--", "/usr/local/bin/docker-entrypoint.sh"]
CMD ["n8n"]
