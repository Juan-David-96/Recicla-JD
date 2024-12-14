class MaterialsController < ApplicationController
  before_action :set_material, only: %i[ show edit update destroy ]

  # GET /materials or /materials.json
  def index
    if params[:search].present?
      @materials = Material.where("name ILIKE ? OR description ILIKE ?", 
                                  "%#{params[:search]}%", "%#{params[:search]}%")
                           .page(params[:page]).per(10)
    else
      @materials = Material.all.page(params[:page]).per(10)
    end
  end

  # GET /materials/1 or /materials/1.json
  def show
    @material = Material.find(params[:id])
  end

  # GET /materials/new
  def new
    @material = Material.new
  end

  # GET /materials/1/edit
  def edit
  end

  # POST /materials or /materials.json
  def create
    @material = Material.new(material_params)
    if @material.save
      redirect_to materials_path, notice: 'Material creado con éxito.'
    else
      render :new
    end
  end

  # PATCH/PUT /materials/1 or /materials/1.json
  def update
    respond_to do |format|
      if @material.update(material_params)
        format.html { redirect_to @material, notice: "Material was successfully updated." }
        format.json { render :show, status: :ok, location: @material }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materials/1 or /materials/1.json
  def destroy
    @material.destroy!

    respond_to do |format|
      format.html { redirect_to materials_path, status: :see_other, notice: "Material was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def material_params
      params.require(:material).permit(:name, :description, :material_type_id)
    end
end
