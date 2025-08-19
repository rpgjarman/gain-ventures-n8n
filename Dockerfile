FROM n8nio/n8n:latest

# Create n8n directory
RUN mkdir -p /tmp/n8n

# Set working directory
WORKDIR /data

# Copy startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose port
EXPOSE 5678

# Start command
CMD ["/start.sh"]