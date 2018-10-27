class ActorTypesController < ApplicationController
  before_action :set_actor_type, only: [:show, :edit, :update, :destroy]

  # GET /actor_types
  # GET /actor_types.json
  def index
    @actor_types = ActorType.all
  end

  # GET /actor_types/1
  # GET /actor_types/1.json
  def show
  end

  # GET /actor_types/new
  def new
    @actor_type = ActorType.new
  end

  # GET /actor_types/1/edit
  def edit
  end

  # POST /actor_types
  # POST /actor_types.json
  def create
    @actor_type = ActorType.new(actor_type_params)

    respond_to do |format|
      if @actor_type.save
        format.html { redirect_to @actor_type, notice: 'Actor type was successfully created.' }
        format.json { render :show, status: :created, location: @actor_type }
      else
        format.html { render :new }
        format.json { render json: @actor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_types/1
  # PATCH/PUT /actor_types/1.json
  def update
    respond_to do |format|
      if @actor_type.update(actor_type_params)
        format.html { redirect_to @actor_type, notice: 'Actor type was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor_type }
      else
        format.html { render :edit }
        format.json { render json: @actor_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_types/1
  # DELETE /actor_types/1.json
  def destroy
    @actor_type.destroy
    respond_to do |format|
      format.html { redirect_to actor_types_url, notice: 'Actor type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_type
      @actor_type = ActorType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_type_params
      params.require(:actor_type).permit(:name)
    end
end
