class StaticController < ApplicationController
	before_action :authenticate_user!
	def hello
	  	@sections = Section.where(parent_section_id: nil)
	end
end
