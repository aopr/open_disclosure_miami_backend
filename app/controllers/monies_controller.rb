class MoniesController < ApplicationController
  before_action :set_mony, only: [:show, :update, :destroy]

  # GET /monies
  def index
    @monies = Mony.all

    render json: @monies
  end

  # GET /monies/1
  def show
    render json: @mony
  end

  # POST /monies
  def create
    @mony = Mony.new(mony_params)

    if @mony.save
      render json: @mony, status: :created, location: @mony
    else
      render json: @mony.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /monies/1
  def update
    if @mony.update(mony_params)
      render json: @mony
    else
      render json: @mony.errors, status: :unprocessable_entity
    end
  end

  # DELETE /monies/1
  def destroy
    @mony.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mony
      @mony = Mony.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mony_params
      params.require(:mony).permit(:date, :type, :first_name, :last_name, :address, :address2, :city, :state, :contributor_type, :occupation, :item_type, :amount)
    end
end
