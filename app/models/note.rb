class Note < ApplicationRecord
	validates :name, presence: true, length: { minimum: 2}
	validates :info, presence: true, length: { minimum: 10}
	belongs_to :category
	has_many :comments

	def category
		Category.find(category_id)
  	end
end
