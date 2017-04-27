class Section < ApplicationRecord
	belongs_to :page
	has_many :section_edits
	has_many :editors, through: :section_edits, :class_name => "AdminUser"
	scope :visible, lambda { where(:visible => true) }
	scope :invisible, lambda { where(:visible => false) }
	scope :sorted,  lambda { order("sections.position ASC") }
	scope :newest, lambda { order("sections.created_at DESC") }
	scope :search, lambda { |query|
	   where(["name LIKE ?", "%#{query}%"])

	}
end
