# imports nginx alpine as the base image
FROM nginx:1.10.1-alpine

# Copys the website files into the nginx html directory
COPY /src/php ./

# set working directory 
WORKDIR /app 


# exposes website to local port 8080
EXPOSE 8080

# Command to start nginx, when the container starts -g turns daemon off 
CMD ["nginx", "-g", "daemon off;"]


# Source
# https://www.youtube.com/watch?v=SnSH8Ht3MIc&t=878s 