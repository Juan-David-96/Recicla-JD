class MaterialsController < ApplicationController
  before_action :set_material, only: %i[ show edit update destroy ]
  before_action :set_recycler

  # GET /materials or /materials.json
  def index
    @materials = @recycler.deliveries.includes(:material).map(&:material).uniq.page(params[:page]).per(10)
  end

  # GET /materials/1 or /materials/1.json
  def show
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

    respond_to do |format|
      if @material.save
        format.html { redirect_to @material, notice: "Material was successfully created." }
        format.json { render :show, status: :created, location: @material }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @material.errors, status: :unprocessable_entity }
      end
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
    def set_recycler
      @recycler = Recycler.find(params[:recycler_id])
    end
    # Only allow a list of trusted parameters through.
    def material_params
      params.require(:material).permit(:recycler_id, :material_type_id, :delivery_date)
    end
end
