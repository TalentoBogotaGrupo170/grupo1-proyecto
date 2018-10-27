class ActorRelationshipsController < ApplicationController
  before_action :set_actor_relationship, only: [:show, :edit, :update, :destroy]

  # GET /actor_relationships
  # GET /actor_relationships.json
  def index
    @actor_relationships = ActorRelationship.all
  end

  # GET /actor_relationships/1
  # GET /actor_relationships/1.json
  def show
  end

  # GET /actor_relationships/new
  def new
    @actor_relationship = ActorRelationship.new
  end

  # GET /actor_relationships/1/edit
  def edit
  end

  # POST /actor_relationships
  # POST /actor_relationships.json
  def create
    @actor_relationship = ActorRelationship.new(actor_relationship_params)

    respond_to do |format|
      if @actor_relationship.save
        format.html { redirect_to @actor_relationship, notice: 'Actor relationship was successfully created.' }
        format.json { render :show, status: :created, location: @actor_relationship }
      else
        format.html { render :new }
        format.json { render json: @actor_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_relationships/1
  # PATCH/PUT /actor_relationships/1.json
  def update
    respond_to do |format|
      if @actor_relationship.update(actor_relationship_params)
        format.html { redirect_to @actor_relationship, notice: 'Actor relationship was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor_relationship }
      else
        format.html { render :edit }
        format.json { render json: @actor_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_relationships/1
  # DELETE /actor_relationships/1.json
  def destroy
    @actor_relationship.destroy
    respond_to do |format|
      format.html { redirect_to actor_relationships_url, notice: 'Actor relationship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_relationship
      @actor_relationship = ActorRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_relationship_params
      params.require(:actor_relationship).permit(:actor_id, :actor2)
    end
end
