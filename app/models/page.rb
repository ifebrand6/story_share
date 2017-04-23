class Page < ApplicationRecord
	belongs_to :story
	has_many :section
	has_and_belongs_to_many :editors, :class_name => "AdminUser"
	scope :sorted,  lambda { order("pages.position ASC") }
	scope :created, lambda {order("pages.created_at DESC ")}
end
