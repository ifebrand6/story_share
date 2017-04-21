class CreateInstructments < ActiveRecord::Migration[5.0]
  def change
    create_table :instructments do |t|

      t.timestamps
    end
  end
end
