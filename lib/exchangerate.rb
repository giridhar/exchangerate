require 'net/http'

class UnsupportedCurrencyException < RuntimeError
end

class ExchangeRate
  HOST = "www.exchangerate-api.com"
  SUPPORTED_CODES=['EUR','USD','JPY','GBP','BGN','CZK','DKK','EEK','HUF','LTL','LVL','PLN','RON','SEK','CHF','NOK','HRK','RUB','TRY','AUD','BRL','CAD','CNY','HKD','IDR','INR','KRW','MXN','MYR','NZD','PHP','SGD','THB','ZAR']

  def initialize(api_key)
    @api_key = api_key
  end

  def convert(from_curr,to_curr,amount)
    begin
      raise UnsupportedCurrencyException if !SUPPORTED_CODES.include?(from_curr) || !SUPPORTED_CODES.include?(to_curr)
      http = Net::HTTP.new(HOST, 80)
      url = "/"+from_curr+"/"+to_curr+"/"+amount.to_s+"?k=#{@api_key}"
      response = http.get(url)
      return response.body
    rescue UnsupportedCurrencyException => e
      raise UnsupportedCurrencyException
    rescue => err_msg
      puts #{err_msg}
    end
  end
end

