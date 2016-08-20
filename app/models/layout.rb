class Layout < ApplicationRecord
	belongs_to :section
	belongs_to :field

	belongs_to :user
end
