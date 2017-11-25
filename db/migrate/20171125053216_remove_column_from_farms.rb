class RemoveColumnFromFarms < ActiveRecord::Migration[5.1]
  def change
    remove_column :farms, :kind
  end
end
