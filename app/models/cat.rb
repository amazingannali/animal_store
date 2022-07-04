class Cat < ApplicationRecord
  belongs_to :user

  validates :name, :breed, :registry, :avatar, present: true
end
