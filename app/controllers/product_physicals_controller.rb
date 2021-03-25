class ProductPhysicalsController < ApplicationController
  before_action :set_product_physical, only: %i[ show edit update destroy ]

  # GET /product_physicals or /product_physicals.json
  def index
    @product_physicals = ProductPhysical.all
  end

  # GET /product_physicals/1 or /product_physicals/1.json
  def show
  end

  # GET /product_physicals/new
  def new
    @product_physical = ProductPhysical.new
  end

  # GET /product_physicals/1/edit
  def edit
  end

  # POST /product_physicals or /product_physicals.json
  def create
    @product_physical = ProductPhysical.new(product_physical_params)

    respond_to do |format|
      if @product_physical.save
        format.html { redirect_to @product_physical, notice: "Product physical was successfully created." }
        format.json { render :show, status: :created, location: @product_physical }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_physical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_physicals/1 or /product_physicals/1.json
  def update
    respond_to do |format|
      if @product_physical.update(product_physical_params)
        format.html { redirect_to @product_physical, notice: "Product physical was successfully updated." }
        format.json { render :show, status: :ok, location: @product_physical }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_physical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_physicals/1 or /product_physicals/1.json
  def destroy
    @product_physical.destroy
    respond_to do |format|
      format.html { redirect_to product_physicals_url, notice: "Product physical was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_physical
      @product_physical = ProductPhysical.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_physical_params
      params.require(:product_physical).permit(:products_id)
    end
end
