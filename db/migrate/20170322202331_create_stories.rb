class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
    	t.string :name
    	t.string :link
    	t.boolean :visible, 
    	t.integer :position
        t.timestamps
    end
  end
end
