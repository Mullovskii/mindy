class Favor < ApplicationRecord
	belongs_to :user
	belongs_to :field
	belongs_to :section
end
