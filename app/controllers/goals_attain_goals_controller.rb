class GoalsAttainGoalsController < ApplicationController
  before_action :set_goals_attain_goal, only: [:show, :edit, :update, :destroy]

  # GET /goals_attain_goals
  # GET /goals_attain_goals.json
  def index
    @goals_attain_goals = GoalsAttainGoal.all
  end

  # GET /goals_attain_goals/1
  # GET /goals_attain_goals/1.json
  def show
  end

  # GET /goals_attain_goals/new
  def new
    @goals_attain_goal = GoalsAttainGoal.new
  end

  # GET /goals_attain_goals/1/edit
  def edit
  end

  # POST /goals_attain_goals
  # POST /goals_attain_goals.json
  def create
    @goals_attain_goal = GoalsAttainGoal.new(goals_attain_goal_params)

    respond_to do |format|
      if @goals_attain_goal.save
        format.html { redirect_to @goals_attain_goal, notice: 'Goals attain goal was successfully created.' }
        format.json { render :show, status: :created, location: @goals_attain_goal }
      else
        format.html { render :new }
        format.json { render json: @goals_attain_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals_attain_goals/1
  # PATCH/PUT /goals_attain_goals/1.json
  def update
    respond_to do |format|
      if @goals_attain_goal.update(goals_attain_goal_params)
        format.html { redirect_to @goals_attain_goal, notice: 'Goals attain goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goals_attain_goal }
      else
        format.html { render :edit }
        format.json { render json: @goals_attain_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals_attain_goals/1
  # DELETE /goals_attain_goals/1.json
  def destroy
    @goals_attain_goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_attain_goals_url, notice: 'Goals attain goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goals_attain_goal
      @goals_attain_goal = GoalsAttainGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goals_attain_goal_params
      params.require(:goals_attain_goal).permit(:validity, :goal_id, :actor_id, :actor_type_id, :attainment, :start_date, :end_date, :score)
    end
end
