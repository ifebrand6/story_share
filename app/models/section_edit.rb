class SectionEdit < ApplicationRecord
	belongs_to :section, :foreign_key => "section_id"
	belongs_to :editor, :class_name => "AdminUser", :foreign_key => "admin_user_id"
end
 