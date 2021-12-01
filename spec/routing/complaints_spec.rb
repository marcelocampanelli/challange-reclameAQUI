require 'rails_helper'

RSpec.describe 'routes', type: :routing do
  it 'search a complaint' do
    expect(get('/complaint/search'))
      .to route_to('complaints#search')
  end

  it 'creat a complaint' do
    expect(post('/complaint'))
      .to route_to('complaints#make')
  end
end
