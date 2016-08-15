class UsersController < ApplicationController

  	before_action :set_user, only: [:show, :edit, :update]


	def show
		@avatar = @user.image+'?type=large'
		@articles = @user.layouts
		@sections = Section.all
	end

	def edit
	end


	def update
		respond_to do |format|
			if @user.update(layout_params)
					format.html { redirect_to @layout, notice: 'Layout was successfully updated.' }
					format.json { render :show, status: :ok, location: @layout }
				else
					format.html { render :edit }
					format.json { render json: @layout.errors, status: :unprocessable_entity }
			end
		end
	end

	private

	def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :user_work_history, :about, :image)
    end

end