<<<<<<< HEAD
FROM ubuntu
RUN apt-get update
RUN apt-get install -y vim
=======
FROM nginx
COPY microcare.html /usr/share/nginx/html
>>>>>>> 0833768fb41d030e2811e4c559d4bff015dfa521
