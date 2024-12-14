class DeliveriesController < ApplicationController
    before_action :set_recycler
    before_action :set_delivery, only: [:show, :edit, :update, :destroy]
  
    def index
      @search = params[:search]
      # Filtramos las entregas por nombre del material, cantidad o fecha si el parámetro de búsqueda existe
      @deliveries = @recycler.deliveries.includes(:material)
      
      if @search.present?
        @deliveries = @deliveries.joins(:material)
                                 .where("materials.name ILIKE ?", "%#{@search}%")
                                 .or(@deliveries.where("quantity::text ILIKE ?", "%#{@search}%"))
      end
      @deliveries = @deliveries.page(params[:page])
    end

    def edit
    end 
  
    def new
        @recycler = Recycler.find(params[:recycler_id])
        @delivery = @recycler.deliveries.new
      end
    
    def create
      @recycler = Recycler.find(params[:recycler_id])
      @delivery = @recycler.deliveries.new(delivery_params)
    
      if @delivery.save
        redirect_to recycler_deliveries_path(@recycler), notice: 'Entrega registrada exitosamente.'
      else
        render :new
      end
    end

    def update
      if @delivery.update(delivery_params)
        redirect_to recycler_deliveries_path(@recycler), notice: 'Entrega actualizada correctamente.'
      else
        render :edit
      end
    end 

    def show
      @delivery = @recycler.deliveries.find(params[:id])
    end

    def destroy
      @delivery.destroy
      redirect_to recycler_deliveries_path(@recycler), notice: 'La entrega ha sido eliminada exitosamente.'
    end
  
    private
  
    def set_recycler
      @recycler = Recycler.find(params[:recycler_id])
    end

    def set_delivery
      @delivery = @recycler.deliveries.find(params[:id])
    end
  
    def delivery_params
      params.require(:delivery).permit(:material_id, :delivery_date, :quantity)
    end
  end
  