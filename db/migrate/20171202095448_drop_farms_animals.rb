class DropFarmsAnimals < ActiveRecord::Migration[5.1]
  def change
    drop_table :farms
    drop_table :animals
  end
end
