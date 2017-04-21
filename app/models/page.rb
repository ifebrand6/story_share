class Page < ApplicationRecord
	belongs_to :story
	has_and_belongs_to_many :editors, :class_name => "AdminUser"
	
end
