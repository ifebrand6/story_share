class Section < ApplicationRecord
	has_many :section_edits
	has_many :editors, through: :section_edits, :class_name => "AdminUser"
	scope :sorted,  lambda { order("sections.position ASC") }
end
