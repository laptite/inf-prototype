class Creator < ApplicationRecord
	has_many :credits, as: :creditable

	def posts
		credits.includes(:post_credit).map(&:post)
	end
end
