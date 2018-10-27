class GoalAttainmentsController < ApplicationController
  before_action :set_goal_attainment, only: [:show, :edit, :update, :destroy]

  # GET /goal_attainments
  # GET /goal_attainments.json
  def index
    @goal_attainments = GoalAttainment.all
  end

  # GET /goal_attainments/1
  # GET /goal_attainments/1.json
  def show
  end

  # GET /goal_attainments/new
  def new
    @goal_attainment = GoalAttainment.new
  end

  # GET /goal_attainments/1/edit
  def edit
  end

  # POST /goal_attainments
  # POST /goal_attainments.json
  def create
    @goal_attainment = GoalAttainment.new(goal_attainment_params)

    respond_to do |format|
      if @goal_attainment.save
        format.html { redirect_to @goal_attainment, notice: 'Goal attainment was successfully created.' }
        format.json { render :show, status: :created, location: @goal_attainment }
      else
        format.html { render :new }
        format.json { render json: @goal_attainment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goal_attainments/1
  # PATCH/PUT /goal_attainments/1.json
  def update
    respond_to do |format|
      if @goal_attainment.update(goal_attainment_params)
        format.html { redirect_to @goal_attainment, notice: 'Goal attainment was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal_attainment }
      else
        format.html { render :edit }
        format.json { render json: @goal_attainment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goal_attainments/1
  # DELETE /goal_attainments/1.json
  def destroy
    @goal_attainment.destroy
    respond_to do |format|
      format.html { redirect_to goal_attainments_url, notice: 'Goal attainment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal_attainment
      @goal_attainment = GoalAttainment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_attainment_params
      params.require(:goal_attainment).permit(:degree_id, :validity, :goal_id, :actor_type_id, :attainment, :startdate, :enddate, :name, :weight, :fulfillment)
    end
end
