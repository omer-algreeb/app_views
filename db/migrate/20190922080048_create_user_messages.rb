class CreateUserMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :user_messages do |t|
      t.references :user, index: true, foreign_key: true
      t.references :message, index: true, foreign_key: true
      

      t.timestamps
    end
  end
end
