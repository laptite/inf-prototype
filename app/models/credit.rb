class Credit < ApplicationRecord
  belongs_to :creditable, polymorphic: true

  scope :first_of_type, -> (contributor) { detect{|c| c.creditable == contributor }.name }

end