class Field < ApplicationRecord
	has_many :favors
	has_many :users
end
