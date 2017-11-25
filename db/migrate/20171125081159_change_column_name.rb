class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :animals, :title, :name
  end
end
