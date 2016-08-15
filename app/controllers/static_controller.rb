class StaticController < ApplicationController
	before_action :authenticate_user!
	def hello
		@random_article = Layout.order("RANDOM()").first
	  	@sections = Section.where(parent_section_id: nil)
	  	@latest_articles = Layout.last(3).reverse
	end

	def choose_favors
		@sections = Section.all
		@fields = Field.all
		@avatar = current_user.image+'?type=large'

	end

end
