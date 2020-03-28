class Post < ApplicationRecord
  include ImageHelper
	belongs_to :category
	has_many :sections, dependent: :destroy
	has_many :post_contributors, dependent: :destroy
	has_many :contributors, through: :post_contributors
	
	has_one_attached :image

	validates :title, presence: true

	accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :post_contributors, reject_if: :all_blank, allow_destroy: true
end