class Character < ApplicationRecord
	belongs_to :user

	has_many :gear
	has_many :note
	has_many :crossroad

	has_one :concept
	has_one :background
	has_one :race
end
