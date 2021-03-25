class PaypalsController < ApplicationController
  before_action :set_paypal, only: %i[ show edit update destroy ]

  # GET /paypals or /paypals.json
  def index
    @paypals = Paypal.all
  end

  # GET /paypals/1 or /paypals/1.json
  def show
  end

  # GET /paypals/new
  def new
    @paypal = Paypal.new
  end

  # GET /paypals/1/edit
  def edit
  end

  # POST /paypals or /paypals.json
  def create
    @paypal = Paypal.new(paypal_params)

    respond_to do |format|
      if @paypal.save
        format.html { redirect_to @paypal, notice: "Paypal was successfully created." }
        format.json { render :show, status: :created, location: @paypal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paypal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paypals/1 or /paypals/1.json
  def update
    respond_to do |format|
      if @paypal.update(paypal_params)
        format.html { redirect_to @paypal, notice: "Paypal was successfully updated." }
        format.json { render :show, status: :ok, location: @paypal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paypal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paypals/1 or /paypals/1.json
  def destroy
    @paypal.destroy
    respond_to do |format|
      format.html { redirect_to paypals_url, notice: "Paypal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paypal
      @paypal = Paypal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paypal_params
      params.fetch(:paypal, {})
    end
end
