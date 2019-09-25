class CreateJops < ActiveRecord::Migration[5.2]
  
  def up
    create_table :jops do |t|
      t.string :name

      t.timestamps
    end
  end

  def down 
    drop_table :jops
  end

end
