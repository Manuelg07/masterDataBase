# masterDataBase

Esta es la masterDataBase

Para compartir tu base de datos PostgreSQL con un compañero, puedes crear una copia de seguridad (backup) y proporcionarle el archivo resultante. A continuación, te indico cómo hacerlo:

1. Crear una copia de seguridad de la base de datos:

Puedes utilizar la herramienta pg_dump para generar un archivo de respaldo en formato SQL. Este archivo contendrá todas las instrucciones necesarias para recrear la base de datos con su estructura y datos.

bash
Copiar código
pg_dump -U manuelgodoy -d masterdatabase -f masterdatabase_backup.sql
Este comando crea un archivo llamado masterdatabase_backup.sql en el directorio actual.

2. Compartir el archivo de respaldo:

Una vez que tengas el archivo masterdatabase_backup.sql, puedes compartirlo con tu compañero a través de medios como correo electrónico, servicios de almacenamiento en la nube (Google Drive, Dropbox, etc.) o incluso subirlo a un repositorio en GitHub si no contiene información sensible.

3. Restaurar la base de datos en el equipo de tu compañero:

Tu compañero puede utilizar la herramienta psql para restaurar la base de datos a partir del archivo de respaldo.

Primero, debe crear una nueva base de datos vacía en su servidor PostgreSQL:

sql

CODIGO SQL :

CREATE DATABASE masterdatabase;

Luego, puede ejecutar el siguiente comando en la terminal:

bash
CODIGO EN LA TERMINAL NO EN LA BASE DE DATOS :

psql -U manuelgodoy -d masterdatabase -f masterdatabase_backup.sql

Este comando restaurará la base de datos en su sistema.

Nota: Asegúrate de que tanto tú como tu compañero tengan las herramientas pg_dump y psql instaladas en sus sistemas. Estas herramientas suelen instalarse junto con PostgreSQL.

Para una guía visual sobre cómo exportar e importar una base de datos en pgAdmin, puedes consultar el siguiente video:
