class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    	t.column :firt_name, :string
    	t.string :last_name
    	t.string  :password
    	t.string :email 
    	t.boolean :visible
    	t.integer :position

      t.timestamps
    end
  end
end

