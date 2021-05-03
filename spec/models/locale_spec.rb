require 'rails_helper'

RSpec.describe Locale, type: :model do
  context 'Create a locale' do
    it 'is valid' do
      company = Company.new(name: 'challange')
      company.save

      locale = Locale.new(id: 1, coordinates: '[-47.8536552, -24.4989961]', address: 'Rua B', state: 'São Paulo',
                          city: 'Registro', country: 'Brazil', postcode: '11900-000', company_id: company.id)
      expect(locale).to be_valid
    end

    it 'is invalid' do
      company = Company.new(name: 'challange')

      locale = Locale.new(id: 1, coordinates: '[-47.8536552, -24.4989961]', address: 'Rua B', state: 'São Paulo',
                          city: 'Registro', country: 'Brazil', postcode: '11900-000', company_id: company.id)
      expect(locale).to_not be_valid
    end
  end
end
