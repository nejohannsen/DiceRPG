class Prowess < ApplicationRecord
	belongs_to :has_prowess, polymorphic: true 
	##Title
	##Description
end
