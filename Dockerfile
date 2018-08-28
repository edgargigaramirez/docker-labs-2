FROM node:4.4.5
ENV LAST_UPDATED 20160605T165400
# Set proxy server, replace host:port with values for your servers
ENV http_proxy host:port
ENV https_proxy host:port


COPY . /app

WORKDIR /app

RUN npm install

EXPOSE 80

CMD ["npm", "start"]