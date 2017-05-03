class AdminUser < ApplicationRecord

	# has_secure_password
	has_and_belongs_to_many :pages
	has_many :section_edits
	has_many :sections, through: :section_edits
# USE TO SORT OUT DATABASE
	scope :sorted,  lambda { order("admin_users.last_name ASC") }
	scope :all_names, lambda {""}

# EMAIL_MODEL =/\A[a-Z0-9._%+-]+@[a-Z0-9.-]+\.[a-z]{2,4}Z/1
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

# *** A TYPICAL SEXY VALIDATION ******
validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, confirmation: true
FORBIDDEN_NAME = ['ADMIN', 'admin', 'administrator', 'God', 'Jesus']
validates_presence_of :first_name
validates_length_of :first_name, :maximum => 25
validates_presence_of :last_name
validates_length_of :last_name, :maximum => 25
validates_presence_of :username
validates_length_of :username, :within => 6..25
validates_uniqueness_of :username
# validates_format_of :email, :with => EMAIL_MODEL
validate :username_allowed


def authenticate(password)
	correct_password = self.password_digest
	if (correct_password == password)
		return true
	else
		false
	end
end

 def username_allowed
 	# @user = AdminUser.all
	if FORBIDDEN_NAME.include?(username)
	    errors.add(:username, "SORRY USERNAME '' FORBIDDEN")
    end
  end
  def name
  	"#{first_name} #{last_name}"
  	# :Or first_name + '' last_name

  end
end
