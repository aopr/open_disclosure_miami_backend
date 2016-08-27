class MoniesController < ApplicationController
  before_action :set_mony, only: [:show, :update, :destroy]

  # GET /monies
  def index
    @monies = Mony.all
    # render json: @monies
  end

  # GET /monies/1
  def show
  end

  # POST /monies
  def create
    @mony = Mony.new(mony_params)
    respond_to do |format|
      if @mony.save
        format.html { redirect_to @mony, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @mony }
      else
        format.html { render :new }
        format.json { render json: @mony.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monies/1
  def update
    respond_to do |format|
      if @mony.update(mony_params)
        format.html { redirect_to @mony, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @mony }
      else
        format.html { render :edit }
        format.json { render json: @mony.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monies/1
  def destroy
    @mony.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Successfully destroyed.' }
      format.json { head :no_content }
    end
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
