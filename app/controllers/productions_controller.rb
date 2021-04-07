class ProductionsController < ApplicationController
  before_action :set_production, only: %i[ show edit update destroy ]
  before_action :authorize
  # GET /productions or /productions.json
  def index
    @productions = Production.all
  end

  # GET /productions/1 or /productions/1.json
  def show
  end

  # GET /productions/new
  def new
    @production = Production.new
  end

  # GET /productions/1/edit
  def edit
  end

  # POST /productions or /productions.json
  def create
    @production = Production.new(production_params)

    respond_to do |format|
      if @production.save
        format.html { redirect_to @production, notice: "Production was successfully created." }
        format.json { render :show, status: :created, location: @production }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productions/1 or /productions/1.json
  def update
    respond_to do |format|
      if @production.update(production_params)
        format.html { redirect_to @production, notice: "Production was successfully updated." }
        format.json { render :show, status: :ok, location: @production }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productions/1 or /productions/1.json
  def destroy
    @production.destroy
    respond_to do |format|
      format.html { redirect_to productions_url, notice: "Production was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production
      @production = Production.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def production_params
      params.require(:production).permit(:title, :creation_date, :rate)
    end
end
