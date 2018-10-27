class ActorAttainGoalsController < ApplicationController
  before_action :set_actor_attain_goal, only: [:show, :edit, :update, :destroy]

  # GET /actor_attain_goals
  # GET /actor_attain_goals.json
  def index
    @actor_attain_goals = ActorAttainGoal.all
  end

  # GET /actor_attain_goals/1
  # GET /actor_attain_goals/1.json
  def show
  end

  # GET /actor_attain_goals/new
  def new
    @actor_attain_goal = ActorAttainGoal.new
  end

  # GET /actor_attain_goals/1/edit
  def edit
  end

  # POST /actor_attain_goals
  # POST /actor_attain_goals.json
  def create
    @actor_attain_goal = ActorAttainGoal.new(actor_attain_goal_params)

    respond_to do |format|
      if @actor_attain_goal.save
        format.html { redirect_to @actor_attain_goal, notice: 'Actor attain goal was successfully created.' }
        format.json { render :show, status: :created, location: @actor_attain_goal }
      else
        format.html { render :new }
        format.json { render json: @actor_attain_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_attain_goals/1
  # PATCH/PUT /actor_attain_goals/1.json
  def update
    respond_to do |format|
      if @actor_attain_goal.update(actor_attain_goal_params)
        format.html { redirect_to @actor_attain_goal, notice: 'Actor attain goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor_attain_goal }
      else
        format.html { render :edit }
        format.json { render json: @actor_attain_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_attain_goals/1
  # DELETE /actor_attain_goals/1.json
  def destroy
    @actor_attain_goal.destroy
    respond_to do |format|
      format.html { redirect_to actor_attain_goals_url, notice: 'Actor attain goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_attain_goal
      @actor_attain_goal = ActorAttainGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_attain_goal_params
      params.require(:actor_attain_goal).permit(:validity, :goal_id, :actor_id, :actor_goal_id, :actor_type_id, :attainment, :startdate, :enddate, :score)
    end
end
