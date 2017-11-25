class CreateFarms < ActiveRecord::Migration[5.1]
  def change
    create_table :farms do |t|
      t.string :title, null: false
      t.string :url
      t.integer :kind
      t.boolean :completed?, default: false
      t.datetime :completed_time
      t.integer :t_reach
      t.integer :t_engagement
      t.integer :t_views
      t.references :user, index: true
      t.references :location, index: true
      t.timestamps
    end
  end
end
