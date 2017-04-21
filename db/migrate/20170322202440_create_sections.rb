class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
    	t.integer :page_id
    	t.string :name
    	t.string :link 
    	t.integer :permalink
    	t.boolean :visible 
    	t.integer :position
    	t.string :content_type
    	t.text :content
      t.timestamps
        end
         puts "the indexing of pages"
      add_index("sections", "page_id")
  	    add_index("sections", "permalink")
      end
     
end
