class PostCredit < ApplicationRecord
	belongs_to :post 
	belongs_to :credit

	validates :post_id, :credit_id, presence: true
end