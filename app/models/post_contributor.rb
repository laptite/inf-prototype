class PostContributor < ApplicationRecord
	belongs_to :post 
	belongs_to :contributor

	validates :post_id, :contributor_id, presence: true
	validates :contributor_id, uniqueness: true

	def changed_for_autosave?
		super || contributor.try(:changed_for_autosave?)
	end
end