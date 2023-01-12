require 'test_helper'

class BtransactionsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get btransaction_index_url
    assert_response :success
  end
end
