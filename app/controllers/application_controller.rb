class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_menu, :authenticate_user!

  def load_menu
  	@main_sections = Section.where(parent_section_id: nil)
  	@fields = Field.all
  end

end
