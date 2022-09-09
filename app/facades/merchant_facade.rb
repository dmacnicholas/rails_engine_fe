class MerchantFacade

  def self.get_all_merchants
    results = MerchantService.get_all_merchants
    results[:data].map do |merchant_result|
      Merchant.new(merchant_result)
    end
  end
end
