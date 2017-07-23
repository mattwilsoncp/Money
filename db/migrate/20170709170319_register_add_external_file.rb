class RegisterAddExternalFile < ActiveRecord::Migration[5.1]
  def change
    add_column :registers, :external_file, :string
  end
end
