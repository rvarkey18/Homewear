class RemoveType < ActiveRecord::Migration[6.0]
  def change
    remove_column :listings, :type
  end
end
