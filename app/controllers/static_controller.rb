class StaticController < ApplicationController
	before_action :authenticate_user!
	def hello
		if current_user.sign_in_count == 1
			redirect_to edit_user_path(current_user)
		else
			prepare_meta_tags title: "Know more", description: "Все знания в одном месте"
			@random_article = Layout.order("RANDOM()").first
		  	@sections = Section.where(parent_section_id: nil).order("RANDOM()").take(9)
		  	@fields = Field.all.order("RANDOM()").take(9)
		  	@latest_articles = Layout.last(3).reverse
	  	end
	end

	def choose_favors
		@user = current_user
		@favor = Favor.new
		@sections = Section.all
		@avatar = current_user.image+'?type=large'
	end

	def choose_industries
		@user = current_user
		if @user.sign_in_count == 1
			@user.update(sign_in_count: 2)
			@user.save(:validate => false)
		end
		@favor = Favor.new
		@sections = Field.all
		@avatar = current_user.image+'?type=large'
		@field = @favor.field
		@chosen_industries = current_user.favors.where.not(field_id: nil)
	end

	def ratings
		@user = current_user
		@avatar = @user.image+'?type=large'		
	end

end
