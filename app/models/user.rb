class User < ApplicationRecord
  has_one_attached :avatar
  has_one_attached :sub_avatar

  def self.ransackable_attributes(auth_object = nil)
    [ "name" ]
  end
end
