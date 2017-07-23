class ChangeRegisterType < ActiveRecord::Migration[5.1]
  def change
    rename_column :registers, :type, :register_type
  end
end
