FROM mysql:8.0-debian
LABEL authors="luismariocervantessuarez"

# Variables de enterno para la configuracion de la base de datos
ENV MYSQL_ROOT_PASSWORD="edqnYMSDf13."
ENV MYSQL_DATABASE="soluRH_test"
ENV MYSQL_USER="soluRH-test"
ENV MYSQL_PASSWORD="edqnLMCSf31."

#Este directorio sera utilizado para almacenar la base de datos y que cuando el contenedor se reinicie no se pierdan los datos
VOLUME /var/lib/mysql

# Este puerto serà utilizado para la coneccion a la base de datos
EXPOSE 3306

#Iniciar de manera segurda el contenedor
CMD ["mysqld_safe"]