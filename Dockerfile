FROM nginx:latest
RUN apt-get update && apt-get install -y curl netcat
RUN echo 'ALUNO CNAPP - DOCKERFILE VULNERAVEL' > /usr/share/nginx/html/index.html
