class Post < ApplicationRecord
  include ImageHelper
	belongs_to :category
	has_many :sections
	has_many :post_credits
	has_many :credits, through: :post_credits
	
	has_one_attached :image

	validates :title, presence: true

	accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :post_credits, reject_if: :all_blank, allow_destroy: true

	def credited
		credits.where(creditable_type: "Creator").map(&:creditable).uniq
	end

end