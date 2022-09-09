require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'returns all merchants', :vcr do
    merchants = MerchantFacade.get_all_merchants

    expect(merchants[0]).to be_a(Merchant)
    expect(merchants).to be_an(Array)
    expect(merchants[0].name).to eq('Schroeder-Jerde')
  end
end
