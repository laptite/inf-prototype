class Post < ApplicationRecord
	belongs_to :category
	has_many :sections

	validates :title, :author, presence: true
	accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true
end
