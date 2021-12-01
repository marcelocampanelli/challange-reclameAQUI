require 'rails_helper'

RSpec.describe Company, type: :model do
  it { should validate_presence_of :name }

  context 'Create a company' do
    company = FactoryBot.create(:company)
    it 'is valid' do
      expect(company).to be_valid
    end
  end
end
