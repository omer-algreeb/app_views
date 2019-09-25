class CreateUsers < ActiveRecord::Migration[5.2]
  
  def up
    create_table :users do |t|

      t.string :name
      t.string :email
      t.integer :phone
      t.string :password
      t.references :jop, index: true, foreign_key: true
      t.timestamps
    end
  end

  def down 
    drop_table :users
  end

end
