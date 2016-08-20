class StaticController < ApplicationController
	before_action :authenticate_user!
	def hello
		@random_article = Layout.order("RANDOM()").first
	  	@sections = Section.where(parent_section_id: nil).order("RANDOM()").take(9)
	  	@fields = Field.all.order("RANDOM()").take(9)
	  	@latest_articles = Layout.last(3).reverse
	end

	def choose_favors
		@favor = Favor.new
		@sections = Section.all
		@avatar = current_user.image+'?type=large'
	end

	def choose_industries
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
