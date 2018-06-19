class RegisteredApplication < ApplicationRecord
  belongs_to :user
  has_many :events

  validates :url, url: true
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: true

end
