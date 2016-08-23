class UsersController < ApplicationController

  	before_action :set_user, only: [:show, :edit, :update]


	def show
		@avatar = @user.image+'?type=large'
		@articles = @user.layouts.reverse
		@sections = @user.sections.uniq
		@fields = @user.fields.uniq
	end

	def edit
		@avatar = @user.image+'?type=large'
	end

	def index
		@users = User.all
		
	end


	def update
		@avatar = @user.image+'?type=large'
		@user.update(user_params)

		respond_to do |format|
			if @user.save(:validate => false)
					if @user.sign_in_count == 1
						format.html { redirect_to fields_preferences_path, notice: 'Выберите сферы.' }
					else
						format.html { redirect_to @user, notice: 'Инфо обновлена.' }
						format.json { render :show, status: :ok, location: @user }
					end
				else
					format.html { render :edit }
					format.json { render json: @user.errors, status: :unprocessable_entity }
			end
		end
	end

	private

	def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :user_work_history, :about, :image, :job_name, :sign_in_count)
    end

end
