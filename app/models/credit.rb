class Credit < ApplicationRecord
	has_one :post_credit
	has_one :post, through: :post_credit
  belongs_to :creditable, polymorphic: true

  scope :creators, -> { where(creditable_type: "Creator").map(&:creditable).uniq }
end