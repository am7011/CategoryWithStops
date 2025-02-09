class Category < ApplicationRecord
  validates :CategoryName, presence: true
  has_many :stops, dependent: :destroy
end
