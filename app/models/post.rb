class Post < ApplicationRecord
	has_many :collections, as: :collectible
	has_many :post_credits
	has_many :credits, through: :post_credits
	has_many :sections
	belongs_to :category
	
	has_many_attached :images

	validates :title, presence: true
	accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true
end