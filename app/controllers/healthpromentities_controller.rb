class HealthpromentitiesController < ApplicationController
  before_action :set_healthpromentity, only: [:show, :edit, :update, :destroy]

  # GET /healthpromentities
  # GET /healthpromentities.json
  def index
    @healthpromentities = Healthpromentity.all
  end

  # GET /healthpromentities/1
  # GET /healthpromentities/1.json
  def show
  end

  # GET /healthpromentities/new
  def new
    @healthpromentity = Healthpromentity.new
  end

  # GET /healthpromentities/1/edit
  def edit
  end

  # POST /healthpromentities
  # POST /healthpromentities.json
  def create
    @healthpromentity = Healthpromentity.new(healthpromentity_params)

    respond_to do |format|
      if @healthpromentity.save
        format.html { redirect_to @healthpromentity, notice: 'Healthpromentity was successfully created.' }
        format.json { render :show, status: :created, location: @healthpromentity }
      else
        format.html { render :new }
        format.json { render json: @healthpromentity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /healthpromentities/1
  # PATCH/PUT /healthpromentities/1.json
  def update
    respond_to do |format|
      if @healthpromentity.update(healthpromentity_params)
        format.html { redirect_to @healthpromentity, notice: 'Healthpromentity was successfully updated.' }
        format.json { render :show, status: :ok, location: @healthpromentity }
      else
        format.html { render :edit }
        format.json { render json: @healthpromentity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /healthpromentities/1
  # DELETE /healthpromentities/1.json
  def destroy
    @healthpromentity.destroy
    respond_to do |format|
      format.html { redirect_to healthpromentities_url, notice: 'Healthpromentity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_healthpromentity
      @healthpromentity = Healthpromentity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def healthpromentity_params
      params.require(:healthpromentity).permit(:name, :mail, :link)
    end
end
