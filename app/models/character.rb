class Character < ApplicationRecord
	belongs_to :user
	has_one :concept
	has_one :background
	has_one :race
end
