FROM nginx:latest

COPY  ./angular_build /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# When the container starts, replace the env.js with values from environment variables
# envsubst < /usr/share/nginx/html/assets/env.sample.js > /usr/share/nginx/html/assets/env.js && 

CMD ["/bin/sh",  "-c",  "envsubst < /usr/share/nginx/html/assets/env.sample.js > /usr/share/nginx/html/assets/env.js && exec nginx -g 'daemon off;'"]

