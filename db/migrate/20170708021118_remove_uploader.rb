class RemoveUploader < ActiveRecord::Migration[5.1]
  def change
    remove_column :registers, :uploader
  end
end
