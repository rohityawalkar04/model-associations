class RenameColumnNameToFirstName < ActiveRecord::Migration[6.1]
  def change
    rename_column :players, :name, :first_name
  end
end
