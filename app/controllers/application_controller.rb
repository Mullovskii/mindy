class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_menu

  def load_menu
  	@main_sections = Section.where(parent_section_id: nil)
  end

end
