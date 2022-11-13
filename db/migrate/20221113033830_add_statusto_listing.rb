class AddStatustoListing < ActiveRecord::Migration[6.0]
  def change
      add_column :listings, :status, :string
  end
end
