class StaticController < ApplicationController
  def hello
  	@sections = Section.where(parent_section_id: nil)
  end
end
