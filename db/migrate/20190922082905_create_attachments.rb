class CreateAttachments < ActiveRecord::Migration[5.2]
  
  def up
    create_table :attachments do |t|

      t.attachment :file
      t.references :message, index: true, foreign_key: true
      
      t.timestamps
    end
  end

  def down 
    drop_table :attachments
  end

end
