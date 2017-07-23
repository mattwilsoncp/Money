class RemoveRegisterExternalFile < ActiveRecord::Migration[5.1]
  def change
    remove_column :registers, :external_file
  end
end
