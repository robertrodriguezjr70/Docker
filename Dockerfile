FROM httpd:latest
RUN echo "<h1>Welcome to My ECR Test</h1>" > /usr/local/apache2/htdocs/index.html
EXPOSE 80