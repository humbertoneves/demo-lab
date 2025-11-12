FROM nginx:latest
RUN apt update && apt install -y curl netcat
RUN echo 'ALUNO LAB CNAPP - DOCKERFILE VULNERÁVEL' > /usr/share/nginx/html/index.html
