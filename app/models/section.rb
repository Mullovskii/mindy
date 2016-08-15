class Section < ApplicationRecord
	belongs_to :parent_section, :class_name => "Section", :foreign_key => "parent_section_id"
  	has_many :child_sections, :class_name => "Section", :foreign_key => "parent_section_id"
  	has_many :layouts
  	has_many :favors
  	
end
