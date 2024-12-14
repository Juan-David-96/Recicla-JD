User.destroy_all

User.create!(
  email: 'operador1@gmail.com',
  password: '291ABASD932',
  password_confirmation: '291ABASD932',
  name: 'Operador 1',
  phone: '1234567890',
  address: 'Dirección del operador 1'
)

User.create!(
  email: 'operador2@gmail.com',
  password: '931SDABA988',
  password_confirmation: '931SDABA988',
  name: 'Operador 2',
  phone: '0987654321',
  address: 'Dirección del operador 2'
)
puts "Usuarios creados exitosamente!"

# Limpiar tablas
Material.delete_all
MaterialType.delete_all

# Crear los tipos de material
material_types = [
  "Natural", 
  "Artificial", 
  "Metálico", 
  "No metálico", 
  "Cerámico", 
  "Fibra textil", 
  "Madera", 
  "Plástico"
]

material_types.each do |type|
  MaterialType.create!(name: type)
end


materials_by_type = {
  "Natural" => [
    { name: "Madera", description: "Material orgánico proveniente de árboles" },
    { name: "Trigo", description: "Cereal utilizado en la alimentación humana" },
    { name: "Lino", description: "Fibra vegetal usada para hacer telas" },
    { name: "Algodón", description: "Fibra vegetal utilizada en la industria textil" },
    { name: "Lana", description: "Fibra animal obtenida de las ovejas" },
    { name: "Cuero", description: "Material de origen animal, utilizado en confección" },
    { name: "Seda", description: "Fibra natural obtenida del capullo de un gusano" },
    { name: "Pelos", description: "Filamentos de origen animal utilizados en diversos productos" }
  ],
  "Artificial" => [
    { name: "Acero", description: "Aleación de hierro y carbono, utilizado en construcción" },
    { name: "Plástico", description: "Material sintético utilizado en una amplia variedad de productos" }
  ],
  "Metálico" => [
    { name: "Hierro", description: "Metal utilizado en la fabricación de herramientas y estructuras" },
    { name: "Aluminio", description: "Metal ligero y resistente utilizado en múltiples industrias" },
    { name: "Estaño", description: "Metal utilizado principalmente en la fabricación de aleaciones" },
    { name: "Plomo", description: "Metal pesado utilizado en diversas aplicaciones industriales" },
    { name: "Cobre", description: "Metal conductor de electricidad utilizado en cables" },
    { name: "Oro", description: "Metal precioso utilizado en joyería y como moneda" },
    { name: "Plata", description: "Metal precioso utilizado en joyería y productos industriales" }
  ],
  "No metálico" => [
    { name: "Agua", description: "Componente esencial para la vida, utilizado en múltiples aplicaciones" },
    { name: "Oxígeno", description: "Gas esencial para la respiración de los seres vivos" },
    { name: "Dióxido de carbono", description: "Gas utilizado en la fotosíntesis y producción de bebidas carbonatadas" },
    { name: "Nitrógeno", description: "Gas utilizado en la industria química y alimentaria" },
    { name: "Azufre", description: "Elemento químico utilizado en la fabricación de fertilizantes" },
    { name: "Yeso", description: "Material utilizado en la construcción para hacer paredes y techos" },
    { name: "Aceite", description: "Líquido graso utilizado en la cocina y en la industria" },
    { name: "Petróleo", description: "Recurso natural utilizado en la producción de combustibles" }
  ],
  "Cerámico" => [
    { name: "Arcilla", description: "Material usado para fabricar cerámica, ladrillos y tejas" },
    { name: "Barro", description: "Mezcla de arcilla, agua y otros materiales, utilizada en alfarería" },
    { name: "Loza", description: "Cerámica de baja calidad utilizada en utensilios y decoraciones" },
    { name: "Refractario", description: "Material resistente a altas temperaturas, utilizado en hornos y chimeneas" },
    { name: "Porcelana", description: "Cerámica fina utilizada para hacer vajillas y adornos" }
  ],
  "Fibra textil" => [
    { name: "Algodón", description: "Fibra vegetal usada en la fabricación de textiles" },
    { name: "Lino", description: "Fibra natural utilizada en la confección de telas" },
    { name: "Esparto", description: "Fibra vegetal utilizada en la fabricación de cuerdas y esteras" },
    { name: "Papel", description: "Material fabricado a partir de pulpa de madera utilizado para escribir" },
    { name: "Lana", description: "Fibra animal utilizada en la confección de prendas de abrigo" },
    { name: "Seda", description: "Fibra de alta calidad obtenida del capullo del gusano de seda" },
    { name: "Cuero", description: "Material flexible obtenido de la piel de animales" },
    { name: "Rayón", description: "Fibra sintética derivada de la celulosa" },
    { name: "Licra", description: "Tejido elástico utilizado en ropa deportiva y de baño" }
  ],
  "Madera" => [
    { name: "Haya", description: "Madera dura utilizada en muebles y carpintería" },
    { name: "Roble", description: "Madera de alta calidad utilizada en la fabricación de muebles y barriles" },
    { name: "Cerezo", description: "Madera apreciada por su belleza, utilizada en muebles y objetos decorativos" },
    { name: "Caoba", description: "Madera de color rojizo, usada en muebles de lujo" },
    { name: "Pino", description: "Madera ligera y fácil de trabajar, utilizada en construcción" },
    { name: "Abeto", description: "Madera utilizada principalmente en la construcción y fabricación de muebles" },
    { name: "Chopo", description: "Madera ligera utilizada en la fabricación de cajas y muebles" }
  ],
  "Plástico" => [
    { name: "PET", description: "Material plástico utilizado en la fabricación de botellas y envases" },
    { name: "PVC", description: "Plástico utilizado en la fabricación de tuberías y cables" },
    { name: "Poliestireno", description: "Material plástico utilizado en empaques y utensilios desechables" },
    { name: "Polietileno", description: "Plástico comúnmente usado en bolsas y envases" },
    { name: "Metacrilato", description: "Plástico transparente utilizado en aplicaciones de alta claridad" },
    { name: "Teflón", description: "Plástico resistente a altas temperaturas, utilizado en utensilios de cocina" },
    { name: "Celofán", description: "Plástico utilizado en envolturas y empaques" },
    { name: "Nailon", description: "Material plástico utilizado en textiles, cuerdas y redes" }
  ]
}

# Crear los materiales y asociarlos a su tipo de material
materials_by_type.each do |type, examples|
  # Obtener el tipo de material
  material_type = MaterialType.find_by(name: type)
  
  # Crear los materiales asociados a este tipo
  examples.each do |example|
    Material.create!(name: example[:name], material_type: material_type, description: example[:description])
  end
end

puts "Los materiales se han creado y asociado exitosamente con descripciones!"
