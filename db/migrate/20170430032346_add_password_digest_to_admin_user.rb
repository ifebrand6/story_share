class AddPasswordDigestToAdminUser < ActiveRecord::Migration[5.0]
  def up
  	remove_column "admin_users", "hashed_password"
  	add_column "admin_users", "password_digest", :string
  end
  def down
  	 add_column "admin_users", "hashed_password" 
  	remove_column "admin_users", "password_digest", :string
  end
end
