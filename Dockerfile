# Use the official PHP image as the base image
FROM php:8.1-apache

# Set the working directory
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Install any needed PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Expose port 80
EXPOSE 8000

# Start Apache in the foreground
CMD ["apache2-foreground"]
