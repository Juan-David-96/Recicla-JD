class RecyclersController < ApplicationController
  before_action :set_recycler, only: %i[ show edit update destroy ]

  # GET /recyclers or /recyclers.json
  def index
    items_per_page = params[:per] || 10 # Por defecto 10, 5 en dispositivos pequeños
    if params[:search].present?
      @recyclers = Recycler.where("name ILIKE ? OR phone ILIKE ? OR address ILIKE ? OR email ILIKE ?", 
                                  "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%")
                           .page(params[:page]).per(items_per_page)
    else
      @recyclers = Recycler.all.page(params[:page]).per(items_per_page)
    end
  end
  

  # GET /recyclers/1 or /recyclers/1.json
  def show
  end

  # GET /recyclers/new
  def new
    @recycler = Recycler.new
  end

  # GET /recyclers/1/edit
  def edit
  end

  # POST /recyclers or /recyclers.json
  def create
    @recycler = Recycler.new(recycler_params)

    respond_to do |format|
      if @recycler.save
        format.html { redirect_to @recycler, notice: "Recycler was successfully created." }
        format.json { render :show, status: :created, location: @recycler }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recycler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recyclers/1 or /recyclers/1.json
  def update
    respond_to do |format|
      if @recycler.update(recycler_params)
        format.html { redirect_to @recycler, notice: "Recycler was successfully updated." }
        format.json { render :show, status: :ok, location: @recycler }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recycler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recyclers/1 or /recyclers/1.json
  def destroy
    @recycler = Recycler.find(params[:id])
    @recycler.destroy
    redirect_to recyclers_path, notice: "Reciclador eliminado correctamente."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recycler
      @recycler = Recycler.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recycler_params
      params.require(:recycler).permit(:name, :phone, :address, :email)
    end
end
