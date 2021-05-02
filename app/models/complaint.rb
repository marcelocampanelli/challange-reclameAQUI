class Complaint < ApplicationRecord
  validates :description, presence: true
  validates :title, presence: true
  validates :company_id, presence: true
  validates :locale_id, presence: true

  belongs_to :company
  belongs_to :locale
end
