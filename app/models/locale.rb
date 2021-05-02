class Locale < ApplicationRecord
  belongs_to :company
  has_many :complaint
end
