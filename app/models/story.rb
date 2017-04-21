 class Story < ApplicationRecord

	has_many :pages
	# scope :params, lambda {find(all)}
	scope :visible, lambda { where(:visible => true) }
	scope :invisible, lambda { where(:visible => false) }
	scope :sorted,  lambda { order("stories.position ASC") }
	scope :newest, lambda { order("stories.created_at DESC") }
	scope :search, lambda { |query|
	   where(["name LIKE ?", "%#{query}%"])

	}
end
