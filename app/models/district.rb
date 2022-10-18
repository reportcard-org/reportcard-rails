class District < ApplicationRecord
  validates :name, presence: true
  validates :lea_id, presence: true

  has_many :user_districts
  has_many :users, through: :user_districts


end
