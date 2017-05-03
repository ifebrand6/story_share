class Section < ApplicationRecord
	validates_presence_of :name
	validates_length_of :name, :maximum => 25
 	CONTENT_TYPES = ['text', 'HTML']
	validates_inclusion_of :content_type, :in => ['text', 'HTML'],:message => "must be one of: #{CONTENT_TYPES.join(',')}"
	validates_presence_of :content

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
