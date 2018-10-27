class IdentTypesController < ApplicationController
  before_action :set_ident_type, only: [:show, :edit, :update, :destroy]

  # GET /ident_types
  # GET /ident_types.json
  def index
    @ident_types = IdentType.all
  end

  # GET /ident_types/1
  # GET /ident_types/1.json
  def show
  end

  # GET /ident_types/new
  def new
    @ident_type = IdentType.new
  end

  # GET /ident_types/1/edit
  def edit
  end

  # POST /ident_types
  # POST /ident_types.json
  def create
    @ident_type = IdentType.new(ident_type_params)

    respond_to do |format|
      if @ident_type.save
        format.html { redirect_to @ident_type, notice: 'Ident type was successfully created.' }
        format.json { render :show, status: :created, location: @ident_type }
      else
        format.html { render :new }
        format.json { render json: @ident_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ident_types/1
  # PATCH/PUT /ident_types/1.json
  def update
    respond_to do |format|
      if @ident_type.update(ident_type_params)
        format.html { redirect_to @ident_type, notice: 'Ident type was successfully updated.' }
        format.json { render :show, status: :ok, location: @ident_type }
      else
        format.html { render :edit }
        format.json { render json: @ident_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ident_types/1
  # DELETE /ident_types/1.json
  def destroy
    @ident_type.destroy
    respond_to do |format|
      format.html { redirect_to ident_types_url, notice: 'Ident type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ident_type
      @ident_type = IdentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ident_type_params
      params.require(:ident_type).permit(:name)
    end
end
