class MaterialGoalsController < ApplicationController
  before_action :set_material_goal, only: [:show, :edit, :update, :destroy]

  # GET /material_goals
  # GET /material_goals.json
  def index
    @material_goals = MaterialGoal.all
  end

  # GET /material_goals/1
  # GET /material_goals/1.json
  def show
  end

  # GET /material_goals/new
  def new
    @material_goal = MaterialGoal.new
  end

  # GET /material_goals/1/edit
  def edit
  end

  # POST /material_goals
  # POST /material_goals.json
  def create
    @material_goal = MaterialGoal.new(material_goal_params)

    respond_to do |format|
      if @material_goal.save
        format.html { redirect_to @material_goal, notice: 'Material goal was successfully created.' }
        format.json { render :show, status: :created, location: @material_goal }
      else
        format.html { render :new }
        format.json { render json: @material_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_goals/1
  # PATCH/PUT /material_goals/1.json
  def update
    respond_to do |format|
      if @material_goal.update(material_goal_params)
        format.html { redirect_to @material_goal, notice: 'Material goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_goal }
      else
        format.html { render :edit }
        format.json { render json: @material_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_goals/1
  # DELETE /material_goals/1.json
  def destroy
    @material_goal.destroy
    respond_to do |format|
      format.html { redirect_to material_goals_url, notice: 'Material goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_goal
      @material_goal = MaterialGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_goal_params
      params.require(:material_goal).permit(:goal_id, :material_type_id, :location)
    end
end
