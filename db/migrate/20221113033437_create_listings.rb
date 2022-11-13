class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :type
      t.text :description
      t.integer :owner_id

      t.timestamps
    end
  end
end
