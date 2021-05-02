class Company < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :complaint
  has_many :locale
end
