# README

con esto en el application_controller nos aseguramos que para acceder a cualquiera de las rutas el usuario este autentificado   
before_action :authenticate_user!

con esto nos aseguramos del borrado en cascada, si se elimina el reciclador se eliminan los materiales asociados a el, lo mismo ocurre para el tipo de material
has_many :materials, dependent: :destroy

para la paginacion usamos la gema kaminari