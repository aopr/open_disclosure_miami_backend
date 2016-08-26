require 'test_helper'

class MoniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mony = monies(:one)
  end

  test "should get index" do
    get monies_url, as: :json
    assert_response :success
  end

  test "should create mony" do
    assert_difference('Mony.count') do
      post monies_url, params: { mony: { address2: @mony.address2, address: @mony.address, amount: @mony.amount, city: @mony.city, contributor_type: @mony.contributor_type, date: @mony.date, first_name: @mony.first_name, item_type: @mony.item_type, last_name: @mony.last_name, occupation: @mony.occupation, state: @mony.state, type: @mony.type } }, as: :json
    end

    assert_response 201
  end

  test "should show mony" do
    get mony_url(@mony), as: :json
    assert_response :success
  end

  test "should update mony" do
    patch mony_url(@mony), params: { mony: { address2: @mony.address2, address: @mony.address, amount: @mony.amount, city: @mony.city, contributor_type: @mony.contributor_type, date: @mony.date, first_name: @mony.first_name, item_type: @mony.item_type, last_name: @mony.last_name, occupation: @mony.occupation, state: @mony.state, type: @mony.type } }, as: :json
    assert_response 200
  end

  test "should destroy mony" do
    assert_difference('Mony.count', -1) do
      delete mony_url(@mony), as: :json
    end

    assert_response 204
  end
end
