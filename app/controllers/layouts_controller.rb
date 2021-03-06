class LayoutsController < ApplicationController
  before_action :set_layout, only: [:show, :edit, :update, :destroy]

  # GET /layouts
  # GET /layouts.json
  def index
    @layouts = Layout.all
  end

  # GET /layouts/1
  # GET /layouts/1.json
  def show
    @comment = Comment.new
    @avatar = @layout.user.image+'?type=large'
    prepare_meta_tags(title: @layout.name,
                      description: @layout.description,
                      keywords: @layout.heading,
                      image: @avatar,
                      twitter: {card: "summary_large_image"})
  end

  # GET /layouts/new
  def new
    @layout = Layout.new
  end

  # GET /layouts/1/edit
  def edit
  end

  # POST /layouts
  # POST /layouts.json
  def create
    # @layout = Layout.new(layout_params)
    @layout = current_user.layouts.create(layout_params)

    respond_to do |format|
      if @layout.save
        format.html { redirect_to @layout, notice: 'Шаблон создан.' }
        format.json { render :show, status: :created, location: @layout }
      else
        format.html { render :new, :flash => { :error => "Oh no!" } }
        format.json { render json: @layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /layouts/1
  # PATCH/PUT /layouts/1.json
  def update
    @layout.update(layout_params)
    respond_to do |format|
      if @layout.save(:validate => false)
        format.html { redirect_to @layout, notice: 'Layout was successfully updated.' }
        format.json { render :show, status: :ok, location: @layout }
      else
        format.html { render :edit }
        format.json { render json: @layout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /layouts/1
  # DELETE /layouts/1.json
  def destroy
    @layout.destroy
    respond_to do |format|
      format.html { redirect_to layouts_url, notice: 'Layout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_layout
      @layout = Layout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def layout_params
      params.require(:layout).permit(:user_id, :heading, :section_id, :field_id,  :name, :description, :image_url, :content)
    end
end
