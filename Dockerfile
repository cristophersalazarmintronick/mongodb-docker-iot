FROM mongo:4.4.6

# Copy init script
COPY init-mongo.js /docker-entrypoint-initdb.d/

# Set permissions on the database directory
RUN mkdir -p /data/db && chown -R mongodb:mongodb /data/db
