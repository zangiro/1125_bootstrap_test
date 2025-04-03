class User < ApplicationRecord
  has_one_attached :avatar

  def self.ransackable_attributes(auth_object = nil)
    [ "name" ]
  end
end
