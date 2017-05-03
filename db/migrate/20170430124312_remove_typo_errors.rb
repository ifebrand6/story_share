class RemoveTypoErrors < ActiveRecord::Migration[5.0]
  def up
  	remove_column "admin_users", "firt_name"
  	add_column "admin_users", "first_name", :string
  end
  def down
  	remove_column "admin_users", "first_name"
  	add_column "admin_users", "firt_name"
  end
end
