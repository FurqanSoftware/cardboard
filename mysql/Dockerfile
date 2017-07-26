FROM mysql:8.0

MAINTAINER Mahmud Ridwan <ridwan@furqansoftware.com>

ENV TZ UTC
RUN ln -snf /usr/share/zoneinfo/TZ /etc/localtime && echo TZ > /etc/timezone

RUN chown -R mysql:root /var/lib/mysql/

CMD ["mysqld"]

EXPOSE 3306
