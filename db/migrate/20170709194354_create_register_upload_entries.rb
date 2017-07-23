class CreateRegisterUploadEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :register_upload_entries do |t|
      t.integer :register_upload_id
      t.date :entry_date
      t.string :description
      t.integer :category_id
      t.float :withdrawal
      t.float :deposit
      t.integer :register_id

      t.timestamps
    end
  end
end
