class CreateRegisterUploads < ActiveRecord::Migration[5.1]
  def change
    create_table :register_uploads do |t|
      t.references :register, foreign_key: true
      t.string :filename

      t.timestamps
    end
  end
end
