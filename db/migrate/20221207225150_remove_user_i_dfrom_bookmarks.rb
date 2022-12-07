class RemoveUserIDfromBookmarks < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookmarks, :user_id
  end
end
