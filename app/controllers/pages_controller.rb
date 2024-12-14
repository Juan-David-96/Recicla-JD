class PagesController < ApplicationController
  def index
    # Total de recicladores
    @recyclers_count = Recycler.count

    # Total de entregas de materiales
    @total_deliveries = Delivery.count

    # Total de entregas de materiales por tipo (ahora incluimos el tipo de material)
    @deliveries_by_type = Material.joins(:deliveries, :material_type)  # Aseguramos que material_type esté relacionado
                                  .select('materials.name AS material_name, material_types.name AS type_name, SUM(deliveries.quantity) AS total_quantity')
                                  .group('materials.name, material_types.name')
                                  .map { |material| { 
                                      material_name: material.material_name,
                                      type_name: material.type_name,
                                      total: material.total_quantity 
                                  } }
  end
end
