# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  bid        :integer
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  listing_id :integer
#
class Comment < ApplicationRecord

  def commenter
    return User.where({ :id => self.author_id }).at(0)
  end
  
end
