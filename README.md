# Reciclaje_Juan

Este proyecto es una aplicación web creada con Ruby on Rails que permite gestionar y facilitar el proceso de reciclaje. A través de esta plataforma, los operadores pueden registrar las entregas de los recicladores de los distintos materiales, especificando el tipo de material, la cantidad y la fecha de la entrega. Además, los administradores del sistema tienen la capacidad de gestionar la información de los recicladores, materiales, y tipos de materiales.

Funcionalidades Principales:
Autenticación de Usuarios: Utiliza Devise para autenticar a los usuarios, asegurando que solo los usuarios registrados puedan acceder a las rutas protegidas.
Gestión de Recicladores: Permite a los administradores crear, editar y ver la información de los recicladores, incluyendo sus datos personales y las entregas que han realizado.
Registro de Entregas: Los operadores pueden registrar entregas de materiales reciclados, especificando la cantidad y el tipo de material, junto con la fecha de la entrega.
Gestión de Materiales: Los administradores pueden gestionar los materiales reciclados, con información detallada sobre su nombre, tipo y descripción.
Paginación: Utiliza la gema Kaminari para manejar la paginación de los registros de recicladores, materiales y entregas de manera eficiente.
Búsqueda Insensible a Mayúsculas y Minúsculas: Se implementa búsqueda insensible al caso en los registros, para que los usuarios puedan buscar materiales, recicladores y entregas sin preocuparse por el uso de mayúsculas o minúsculas.
Borrado en Cascada: Si se elimina un reciclador, se eliminan automáticamente las asociaciones relacionadas (como las entregas y los materiales asociados a ese reciclador).
Deshabilitación del Registro: Se ha deshabilitado el registro de nuevos usuarios para evitar accesos no autorizados. El acceso a la vista de registro es restringido.

Tecnologías Utilizadas:
Ruby on Rails: Framework para el desarrollo de aplicaciones web.
Devise: Para la autenticación de usuarios.
PostgreSQL: Base de datos relacional para almacenar la información del sistema.
Bootstrap: Para el diseño responsivo y la interfaz de usuario.
Kaminari: Para la paginación de las listas de registros.