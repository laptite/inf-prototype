class Credit < ApplicationRecord
  belongs_to :creditable, polymorphic: true
end
