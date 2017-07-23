class RegUploadExtFile < ActiveRecord::Migration[5.1]
  def change
    add_column :register_uploads, :external_file, :string
  end
end
