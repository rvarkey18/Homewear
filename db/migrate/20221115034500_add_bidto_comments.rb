class AddBidtoComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :bid, :integer
  end
end
