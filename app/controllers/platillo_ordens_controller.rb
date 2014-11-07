class PlatilloOrdensController < ApplicationController
  before_action :set_platillo_orden, only: [:show, :edit, :update, :destroy]

  # GET /platillo_ordens
  # GET /platillo_ordens.json
  def index
    @platillo_ordens = PlatilloOrden.all
  end

  # GET /platillo_ordens/1
  # GET /platillo_ordens/1.json
  def show
  end

  # GET /platillo_ordens/new
  def new
    @platillo_orden = PlatilloOrden.new
  end

  # GET /platillo_ordens/1/edit
  def edit
  end

  # POST /platillo_ordens
  # POST /platillo_ordens.json
  def create
    @platillo_orden = PlatilloOrden.new(platillo_orden_params)

    respond_to do |format|
      if @platillo_orden.save
        format.html { redirect_to @platillo_orden, notice: 'Platillo orden was successfully created.' }
        format.json { render :show, status: :created, location: @platillo_orden }
      else
        format.html { render :new }
        format.json { render json: @platillo_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platillo_ordens/1
  # PATCH/PUT /platillo_ordens/1.json
  def update
    respond_to do |format|
      if @platillo_orden.update(platillo_orden_params)
        format.html { redirect_to @platillo_orden, notice: 'Platillo orden was successfully updated.' }
        format.json { render :show, status: :ok, location: @platillo_orden }
      else
        format.html { render :edit }
        format.json { render json: @platillo_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platillo_ordens/1
  # DELETE /platillo_ordens/1.json
  def destroy
    @platillo_orden.destroy
    respond_to do |format|
      format.html { redirect_to platillo_ordens_url, notice: 'Platillo orden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platillo_orden
      @platillo_orden = PlatilloOrden.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platillo_orden_params
      params.require(:platillo_orden).permit(:id_orden, :id_platillo)
    end
end
