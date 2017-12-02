class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string :title, null: false
      t.text :description
      t.datetime :end_time
      t.boolean :completed?, default: false
      t.integer :t_reach, default: 0
      t.integer :t_engagement, default: 0
      t.integer :t_view, default: 0
      t.references :user, foreign_key: true, index: true
      t.references :category, foreign_key: true, index: true
      t.timestamps
    end
  end
end
