class Section < ApplicationRecord
  include ImageHelper

	belongs_to :post, inverse_of: :sections
	has_one_attached :section_image

	def changed_for_autosave?
		super || section_image.try(:changed_for_autosave?)
	end
end
