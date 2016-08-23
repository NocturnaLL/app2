class Note < ApplicationRecord
	validates :name, presence: true, length: { minimum: 2}
	validates :info, presence: true, length: { minimum: 10}
end
