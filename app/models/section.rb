class Section < ApplicationRecord
	belongs_to :post

	validates :text, presence: true
end
