class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :name, presence: true
  # validates :avatar, presence: true, blob: { content_type: ['image/jpg', 'image/jpeg', 'image/png'] }
  has_one_attached :avatar
  has_one_attached :sub_avatar

  def self.ransackable_attributes(auth_object = nil)
    [ "name" ]
  end
end
