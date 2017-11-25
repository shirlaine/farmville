class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :title, null: false
      t.string :url
      t.integer :kind
      t.boolean :completed?, default: false
      t.datetime :completed_time
      t.integer :reach
      t.integer :engagement
      t.integer :view
      t.references :farm, index: true
      t.timestamps
    end
  end
end
