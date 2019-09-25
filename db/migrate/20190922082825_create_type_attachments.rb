class CreateTypeAttachments < ActiveRecord::Migration[5.2]
  
  def up
    create_table :type_attachments do |t|

      t.string :name

      t.timestamps
    end
  end

  def down 
    drop_table :type_attachments
  end

end
