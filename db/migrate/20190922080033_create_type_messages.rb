class CreateTypeMessages < ActiveRecord::Migration[5.2]
  
  def up
    create_table :type_messages do |t|
      t.string :name

      t.timestamps
    end
  end

  def down 
    drop_table :type_messages
  end

end
