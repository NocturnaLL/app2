class Category < ApplicationRecord

	def notes
		Note.where(category_id: id)
	end

	has_many :notes
end
