require File.dirname(__FILE__) + '/test_helper'
class ExchangeRateTest < Test::Unit::TestCase
  def test_supported_covertion
    setup_net_http
    er=ExchangeRate.new("my-api-key")
    amt = er.convert("USD","INR","300")
    assert_not_nil amt
  end

  def test_unsupported_covertion
    er=ExchangeRate.new("my-api-key")
    assert_raises (UnsupportedCurrencyException) do
      er.convert("unknowcurrency","INR","300")
    end
  end

  def setup_net_http
    response = {'code' => '200','readbody'=>'true'}
    response.stubs(:body).returns('2000')
    server = mock()
    server.stubs(:get).returns(response)
    Net::HTTP.stubs(:new).returns(server)
  end
end

