class SucursalsController < ApplicationController
  skip_before_action :authenticate_persona!, only: [:index]
  before_action :set_sucursal, only: %i[ show edit update destroy ]

  # GET /sucursals or /sucursals.json
  def index
    if !persona_signed_in?
      redirect_to new_persona_session_path
    end
    @sucursals = Sucursal.all
  end

  # GET /sucursals/1 or /sucursals/1.json
  def show
  end

  # GET /sucursals/new
  def new
    @sucursal = Sucursal.new
    @persona_id = current_persona.id
  end

  # GET /sucursals/1/edit
  def edit
    @persona_id = @sucursal.persona_id
  end

  # POST /sucursals or /sucursals.json
  def create
    @sucursal = Sucursal.new(sucursal_params)

    respond_to do |format|
      if @sucursal.save
        format.html { redirect_to @sucursal, notice: "Sucursal creada exitosamente" }
        format.json { render :show, status: :created, location: @sucursal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sucursals/1 or /sucursals/1.json
  def update
    respond_to do |format|
      if @sucursal.update(sucursal_params)
        format.html { redirect_to @sucursal, notice: "Sucursal actualizada exitosamente" }
        format.json { render :show, status: :ok, location: @sucursal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sucursals/1 or /sucursals/1.json
  def destroy
    @sucursal.destroy
    respond_to do |format|
      format.html { redirect_to sucursals_url, notice: "Sucursal eliminada exitosamente" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sucursal
      @sucursal = Sucursal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sucursal_params
      params.require(:sucursal).permit(:nombre, :calle, :colonia, :num_exterior, :num_interior, :codigo_postal, :ciudad, :pais, :persona_id)
    end
end
