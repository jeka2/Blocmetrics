class RegisteredApplication < ApplicationRecord
  belongs_to :user

  validates :url, presence: true, uniqueness: true, format: { with: /\A((https?|ftp|smtp):\/\/)?(www.)?[a-z0-9]+\.[a-z]+(\/[a-zA-Z0-9#]+\/?)*\z/, on: :create, :message => "invalid" }
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: true

end
