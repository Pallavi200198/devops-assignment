# Use WordPress image as the base image
FROM wordpress:latest

# Set environment variables for the database connection
ENV WORDPRESS_DB_HOST=http://my-localhost
ENV WORDPRESS_DB_NAME=MariaDB
ENV WORDPRESS_DB_USER=Pallavi
ENV WORDPRESS_DB_PASSWORD=#Pallavi8050

#set other environment variables if needed
ENV WORDPRESS_TABLE_PREFIX=wp_
ENV WORDPRESS_DEBUG=true

# Step 5: Add custom labels for metadata (optional but recommended)
LABEL maintainer="Pallavi <your@email.com>"
LABEL version="1.0"
LABEL description="Docker image for WordPress"

#customize the WordPress configuration
COPY wp-config.php /var/www/html/wp-config.php

#Expose port 80 for HTTP
EXPOSE 80

#Start the WordPress application
CMD ["apache2-foreground"]
