require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
	assert_select '#columns #side a', minimum: 4
	assert_select '#main .entry', 3
	assert_select 'h3', 'Something'
	assert_select '.price', /\€[,\d]+\.\d\d/
	assert_select '#time', /\d\d\d\d-\d\d-\d\d \d\d:\d\d:\d\d \+\d\d\d\d/
  end

end
