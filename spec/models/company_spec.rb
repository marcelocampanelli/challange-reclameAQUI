require 'rails_helper'

RSpec.describe Company, type: :model do
  context 'Create a company' do
    it 'is valid' do
      company = Company.new(name: 'challange')
      expect(company).to be_valid
    end

    it 'is invalid' do
      company = Company.new(name: '')
      expect(company).to_not be_valid
    end
  end
end
