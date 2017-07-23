class AddUploaderToRegister < ActiveRecord::Migration[5.1]
  def change
    add_column :registers, :uploader, :string
  end
end
