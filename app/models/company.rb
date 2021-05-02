class Company < ApplicationRecord
  has_many :complaint
  has_many :locale
end
