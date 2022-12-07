# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  integer    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  listing_id :integer
#  user_id    :integer
#
class Bookmark < ApplicationRecord
  belongs_to :user
  validates :listing_id, :presence  => true
end
