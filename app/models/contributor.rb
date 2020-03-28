class Contributor < ApplicationRecord
	has_many :post_contributors
	has_many :posts, through: :post_contributors
	has_many :credits, as: :creditable

	scope :authors, -> { where(creditable_type: 'Words') }
	scope :photographers, -> { where(creditable_type: 'Images') }
end
