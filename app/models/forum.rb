class Forum < ApplicationRecord
  extend FriendlyId
  validates :name, presence: true
  friendly_id :name, use: %i(slugged finders)

  has_many :posts, dependent: :destroy
  belongs_to :owner, class_name: "Member"

  def to_s
    name
  end
end
