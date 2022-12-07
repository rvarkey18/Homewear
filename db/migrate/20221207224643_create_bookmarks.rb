class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.string :user_id
      t.string :integer
      t.integer :listing_id

      t.timestamps
    end
  end
end
