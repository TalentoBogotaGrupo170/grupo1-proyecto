class ActorGoalsController < ApplicationController
  before_action :set_actor_goal, only: [:show, :edit, :update, :destroy]

  # GET /actor_goals
  # GET /actor_goals.json
  def index
    @actor_goals = ActorGoal.all
  end

  # GET /actor_goals/1
  # GET /actor_goals/1.json
  def show
  end

  # GET /actor_goals/new
  def new
    @actor_goal = ActorGoal.new
  end

  # GET /actor_goals/1/edit
  def edit
  end

  # POST /actor_goals
  # POST /actor_goals.json
  def create
    @actor_goal = ActorGoal.new(actor_goal_params)

    respond_to do |format|
      if @actor_goal.save
        format.html { redirect_to @actor_goal, notice: 'Actor goal was successfully created.' }
        format.json { render :show, status: :created, location: @actor_goal }
      else
        format.html { render :new }
        format.json { render json: @actor_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_goals/1
  # PATCH/PUT /actor_goals/1.json
  def update
    respond_to do |format|
      if @actor_goal.update(actor_goal_params)
        format.html { redirect_to @actor_goal, notice: 'Actor goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor_goal }
      else
        format.html { render :edit }
        format.json { render json: @actor_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_goals/1
  # DELETE /actor_goals/1.json
  def destroy
    @actor_goal.destroy
    respond_to do |format|
      format.html { redirect_to actor_goals_url, notice: 'Actor goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_goal
      @actor_goal = ActorGoal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_goal_params
      params.require(:actor_goal).permit(:actor_id, :validity, :goal_id, :actor_type_id, :startdate, :enddate, :score)
    end
end
