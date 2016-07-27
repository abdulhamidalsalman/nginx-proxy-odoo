FROM bbania/nginx:latest
MAINTAINER "Layershift" <jelastic@layershift.com>

COPY ./configs/nginx.conf /etc/nginx/nginx.conf
COPY ./configs/odoo.conf /etc/nginx/conf.d/default.conf

VOLUME /etc/nginx/

EXPOSE 80 443

CMD ["nginx", "&"]

