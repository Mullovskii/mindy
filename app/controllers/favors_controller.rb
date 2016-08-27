class FavorsController < ApplicationController
  before_action :set_favor, only: [:show, :edit, :update, :destroy]

  # GET /favors
  # GET /favors.json
  def index
    @favors = Favor.all
  end

  # GET /favors/1
  # GET /favors/1.json
  def show
  end

  # GET /favors/new
  def new
    @favor = Favor.new
  end

  # GET /favors/1/edit
  def edit
  end

  # POST /favors
  # POST /favors.json
  def create
    # @favor = Favor.new(favor_params)
    @current_user = current_user
    @favor = current_user.favors.create(user_id: params[:user_id], section_id: params[:section_id], field_id: params[:field_id])
    if @favor.field.nil?
      @section = @favor.section
    else
      @section = @favor.field
    end
    respond_to do |format|
      if @favor.save(:validate => false)
        format.html { redirect_to :back, notice: 'Favor was successfully created.' }
        format.js { flash.now[:success] = 'Выбрано' }
        format.json { render :show, status: :created, location: @favor }
      else
        format.html { render :new }
        format.json { render json: @favor.errors, status: :unprocessable_entity }
        format.js { flash.now[:success] = 'Не выбрано' }

      end
    end
  end

  # PATCH/PUT /favors/1
  # PATCH/PUT /favors/1.json
  def update
    respond_to do |format|
      if @favor.update(favor_params)
        format.html { redirect_to @favor, notice: 'Favor was successfully updated.' }
        format.json { render :show, status: :ok, location: @favor }
      else
        format.html { render :edit }
        format.json { render json: @favor.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /favors/1
  # DELETE /favors/1.json
  def destroy
    @current_user = current_user
    @favor.destroy
    if @favor.field.nil?
      @section = @favor.section
    else
      @section = @favor.field
    end
    
    respond_to do |format|
      format.html { redirect_to favors_url, notice: 'Favor was successfully destroyed.' }
      format.json { head :no_content }
      format.js { flash.now[:success] = 'Не выбрано' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favor
      @favor = Favor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favor_params
      params.require(:favor).permit(:user_id, :section_id, :field_id)
    end
end
