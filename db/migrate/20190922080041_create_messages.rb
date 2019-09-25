class CreateMessages < ActiveRecord::Migration[5.2]
  
  def up
    create_table :messages do |t|

      t.string :title
      t.text :descrption
      t.references :type_message, index: true, foreign_key: true

      t.timestamps
    end
  end

  def down 
    drop_table :messages
  end

end
