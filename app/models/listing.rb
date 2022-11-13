# == Schema Information
#
# Table name: listings
#
#  id          :integer          not null, primary key
#  description :text
#  image       :string
#  name        :string
#  price       :integer
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  owner_id    :integer
#
class Listing < ApplicationRecord

def seller
  return User.where({ :id => self.owner_id }).at(0)
end

end
