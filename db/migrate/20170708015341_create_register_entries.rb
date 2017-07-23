class CreateRegisterEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :register_entries do |t|
      t.references :register, foreign_key: true
      t.date :entry_date
      t.string :confirmation_number
      t.string :description
      t.references :category, foreign_key: true
      t.float :deposit
      t.float :withdrawal

      t.timestamps
    end
  end
end
