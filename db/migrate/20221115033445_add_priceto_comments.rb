class AddPricetoComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :price
  end
end
