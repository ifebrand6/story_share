class Page < ApplicationRecord
	validates_presence_of :name
	validates_length_of :name, :maximum => 25
	validates_presence_of :permalink
	validates_uniqueness_of :permalink, :within => 3.200
	belongs_to :story
	has_many :sections
	has_and_belongs_to_many :editors, :class_name => "AdminUser"
	scope :visible, lambda { where(:visible => true) }
	scope :invisible, lambda { where(:visible => false) }
	scope :sorted,  lambda { order("pages.position ASC") }
	scope :newest, lambda { order("pages.created_at DESC") }
	scope :search, lambda { |query|
	   where(["name LIKE ?", "%#{query}%"])

	}
end
