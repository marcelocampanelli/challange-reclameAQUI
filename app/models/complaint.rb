class Complaint < ApplicationRecord
  belongs_to :company
  belongs_to :locale
end
