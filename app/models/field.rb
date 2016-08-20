class Field < ApplicationRecord
	has_many :favors
	has_many :users
	has_many :layouts
end
