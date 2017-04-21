class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
       t.integer :story_id
       t.string :name
       t.string :link
       t.integer :permalink
       t.boolean :visible 
       t.integer :position
       
       t.timestamps
    end
    puts "the indexing of pages"
      add_index("pages", "story_id")
  	    add_index("pages", "permalink")
  end
  # def up
  # 	add_index :pages, :stories_id
  # 	add_index :pages, :permalink
  	
  # end
  # def down
  # 	remove_index :pages, :permalink
  # 	remove_index :pages, :stories_id
  # 	# remove_index("pages", "permalink")
  # 	# remove_index("pages", "stories_id")
  	
  # 		  end
end
