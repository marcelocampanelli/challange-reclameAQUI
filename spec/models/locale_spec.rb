require 'rails_helper'

RSpec.describe Locale, type: :model do
  it { should validate_presence_of :city }
  it { should validate_presence_of :address }
  it { should validate_presence_of :country }
  it { should validate_presence_of :postcode }

  it { should have_many(:complaint) }
  it { should belong_to(:company) }

  context 'Create a locale' do
    locale = FactoryBot.create(:locale)

    it 'is valid' do
      expect(locale).to be_valid
    end
  end
end
