require 'rails_helper'

RSpec.describe Complaint, type: :model do
  it { should validate_presence_of :description }
  it { should validate_presence_of :title }
  it { should validate_presence_of :company_id }
  it { should validate_presence_of :locale_id }

  it { should belong_to(:company) }
  it { should belong_to(:locale) }

  context 'create a complaint' do
    complaint = FactoryBot.create(:complaint)
    it 'is valid' do
      expect(complaint).to be_valid
    end
  end
end
