class ProductDigitalsController < ApplicationController
  before_action :set_product_digital, only: %i[ show edit update destroy ]

  # GET /product_digitals or /product_digitals.json
  def index
    @product_digitals = ProductDigital.all
  end

  # GET /product_digitals/1 or /product_digitals/1.json
  def show
  end

  # GET /product_digitals/new
  def new
    @product_digital = ProductDigital.new
  end

  # GET /product_digitals/1/edit
  def edit
  end

  # POST /product_digitals or /product_digitals.json
  def create
    @product_digital = ProductDigital.new(product_digital_params)

    respond_to do |format|
      if @product_digital.save
        format.html { redirect_to @product_digital, notice: "Product digital was successfully created." }
        format.json { render :show, status: :created, location: @product_digital }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_digital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_digitals/1 or /product_digitals/1.json
  def update
    respond_to do |format|
      if @product_digital.update(product_digital_params)
        format.html { redirect_to @product_digital, notice: "Product digital was successfully updated." }
        format.json { render :show, status: :ok, location: @product_digital }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_digital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_digitals/1 or /product_digitals/1.json
  def destroy
    @product_digital.destroy
    respond_to do |format|
      format.html { redirect_to product_digitals_url, notice: "Product digital was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_digital
      @product_digital = ProductDigital.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_digital_params
      params.require(:product_digital).permit(:products_id)
    end
end
