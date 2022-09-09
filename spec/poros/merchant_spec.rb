require 'rails_helper'

RSpec.describe Merchant do
  let!(:attributes) { {id: "1",
                       attributes: {name: "Drew Mac"}
                       } }
  let!(:merchant) { Merchant.new(attributes) }

  it 'exists' do
    expect(merchant).to be_a(Merchant)
  end

  it 'has attributes' do
    expect(merchant.id).to eq(1)
    expect(merchant.name).to eq("Drew Mac")
  end
end
