require 'rails_helper'

RSpec.describe Complaint, type: :model do
  context 'create a complaint' do
    it 'is invalid' do
      complaint = Complaint.new(
        title: 'Rakuna Matata',
        description: 'Lorem impsum Lorem impsum Lorem impsum  ',
        company_id: 1,
        locale_id: 3
      )
      expect(complaint).to_not be_valid
    end

    it 'is valid' do
      company = Company.new(name: 'challange')
      company.save

      locale = Locale.new(id: 1, coordinates: '[-47.8536552, -24.4989961]', address: 'Rua B', state: 'São Paulo',
                          city: 'Registro', country: 'Brazil', postcode: '11900-000', company_id: company.id)
      locale.save
      complaint = Complaint.new(
        id: 1,
        title: 'Rakuna Matata',
        description: 'Lorem impsum Lorem impsum Lorem impsum  ',
        company_id: company.id,
        locale_id: locale.id
      )
      expect(complaint).to be_valid
    end
  end
end
