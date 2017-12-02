class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :file_location, null: false
      t.string :caption
      t.references :facebook_post, index: true
      t.references :tweet_post, index: true
      t.references :instagram_post, index: true
      t.timestamps
    end
  end
end
