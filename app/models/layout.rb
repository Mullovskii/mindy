class Layout < ApplicationRecord
	belongs_to :section
	belongs_to :field
	belongs_to :user
  	has_many :comments
end
