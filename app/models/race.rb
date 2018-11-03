class Race < ApplicationRecord
	has_many :prowesses, as: :has_prowess
	belongs_to :character
end
