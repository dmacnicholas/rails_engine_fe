require 'rails_helper'

RSpec.describe 'Merchant index page' do
  it 'displays all merchants by name', :vcr do

    visit '/merchants'

    expect(page).to have_content("Merchants")
    expect(page).to have_content("Name: Schroeder-Jerde")
    expect(page).to have_content("Name: Klein, Rempel and Jones")
  end
end
