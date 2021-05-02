require 'rails_helper'

RSpec.describe Locale, type: :model do
  context 'Create a locale' do
    it 'is invalid' do
      locale = Locale.new(coordinates: '[-47.8536552, -24.4989961]', address: 'Rua B', state: 'São Paulo',
                          city: 'Registro', country: 'Brazil', postcode: '11900-000', company_id: 2)
      expect(locale).to_not be_valid
    end
  end
end
