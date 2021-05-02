class Locale < ApplicationRecord
  validates :address, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :postcode, presence: true

  belongs_to :company
  has_many :complaint
end
