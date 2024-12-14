# README

con esto en el application_controller nos aseguramos que para acceder a cualquiera de las rutas el usuario este autentificado   
before_action :authenticate_user!

con esto nos aseguramos del borrado en cascada, si se elimina el reciclador se eliminan los materiales asociados a el, lo mismo ocurre para el tipo de material
has_many :materials, dependent: :destroy

para la paginacion usamos la gema kaminari

los usuarios creados en el seeder se les agrego una direccion y telefono genericos para que no existiese conflicto con las validaciones (revisar seed.eb)

Para asociar los materiales con los recicladores creamos el modelo delivery, este registra las entregas realizadas por los recicladores con fecha y materiales, ademas de la cantidad en gramos
adicionalmente la tabla materiales tiene como paramentros nombre y descripcion, ademas de una FK con un modelo llamado tipo de material, esto puede sonar redundante pero lo encotnre necesario y mas facil a futuro poder registrar un material ya teniendo en cuenta una base de datos con tipos de materiales lista en el seeder

