class Collection < ApplicationRecord
  belongs_to :collectible, polymorphic: true
	
	has_many :collections, as: :collectible
	has_many :posts
end
